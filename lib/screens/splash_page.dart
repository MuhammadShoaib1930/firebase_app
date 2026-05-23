import 'dart:async';

import 'package:firebase_app/core/services/firebase_services.dart';
import 'package:firebase_app/core/assets/assets_name.dart';
import 'package:firebase_app/core/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> navigat() async {
    Timer.periodic(Duration(seconds: 5), (timer) {
      if (mounted) {
        if (FirebaseServices().checkLogin()) {
          Navigator.of(context).pushReplacementNamed(RoutesName.homePage);
        } else {
          Navigator.pushReplacementNamed(context, RoutesName.signinPage);
        }
      }
    });
  }

  @override
  void initState() {
    navigat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentGeometry.center,
              children: [Image.asset(AssetsName.icSplash), CircularProgressIndicator()],
            ),
            Text("firebase app. "),
            Text("perform CURD operations. "),
            Text("wait for proccess. "),
          ],
        ),
      ),
    );
  }
}
