import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class FirebaseServices {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  String name = "Guest";
  bool checkLogin() {
    User? user;
    try {
      user = firebaseAuth.currentUser;
    } on FirebaseException catch (e) {
      debugPrint(e.message.toString());
    }
    return (user != null) ? true : false;
  }

  Future<void> logOut() async {
    try {
      await firebaseAuth.signOut();
    } on FirebaseException catch (e) {
      debugPrint(e.message.toString());
    }
  }

  void updatePassword(String passowrd, oldPassword) async {
    final user = FirebaseAuth.instance.currentUser;
    try {
      if (user != null) {
        final crd = EmailAuthProvider.credential(email: user.email!, password: oldPassword);
        await firebaseAuth.currentUser!.reauthenticateWithCredential(crd);
        await firebaseAuth.currentUser!.updatePassword(passowrd);
      }
    } on FirebaseAuthException catch (err) {
      debugPrint(err.toString());
    }
  }

  void deleteAccount(String currentPassword) async {
    try {
      final user = firebaseAuth.currentUser;

      if (user != null) {
        final credential = EmailAuthProvider.credential(
          email: user.email!,
          password: currentPassword,
        );

        await user.reauthenticateWithCredential(credential);
        await user.delete();
      }
    } on FirebaseAuthException catch (e) {
      debugPrint(e.code);
      debugPrint(e.message);
    }
  }

  void phoneVerification(String phoneNumber) async {
    try {
      await firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await firebaseAuth.signInWithCredential(credential);
        },
        verificationFailed: (error) {
          debugPrint(error.message.toString());
        },
        codeSent: (verificationId, forceResendingToken) {
          debugPrint(verificationId.toString());
        },
        codeAutoRetrievalTimeout: (verificationId) {},
      );
    } on FirebaseException catch (e) {
      debugPrint(e.message.toString());
    }
  }

  void createDatabase(Map<String, dynamic> map) async {
    try {
      await firestore.collection("users").doc(firebaseAuth.currentUser?.uid).set(map);
    } on FirebaseException catch (e) {
      debugPrint(e.message.toString());
    }
  }

  Future<DocumentSnapshot> readData() async {
    DocumentSnapshot data = await firestore
        .collection("users")
        .doc(firebaseAuth.currentUser?.uid)
        .get();
    return data;
  }

  Future<void> getName() async {
    final data = await readData();
    name = data["name"];
  }

  void updateData(Map<String, dynamic> map) async {
    try {
      await firestore.collection("users").doc(firebaseAuth.currentUser?.uid).update(map);
    } on FirebaseException catch (e) {
      debugPrint(e.message.toString());
    }
  }

  void deleteData() async {
    try {
      await firestore.collection("users").doc(firebaseAuth.currentUser?.uid).delete();
    } on FirebaseException catch (e) {
      debugPrint(e.message.toString());
    }
  }
}
