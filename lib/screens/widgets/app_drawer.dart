import 'package:firebase_app/blocs/bloc/theme_bloc.dart';
import 'package:firebase_app/core/routes/routes_name.dart';
import 'package:firebase_app/core/services/firebase_services.dart';
import 'package:firebase_app/screens/widgets/about_app.dart';
import 'package:firebase_app/screens/widgets/password_change_page.dart';
import 'package:firebase_app/screens/widgets/phone_verification_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Drawer appDrawer(BuildContext context, {String? name}) {
  return Drawer(
    child: Column(
      spacing: 10,
      children: [
        DrawerHeader(
          child: InkWell(
            onTap: () {
              //TODO upload user image and show
            },
            child: CircleAvatar(
              child: Text(
                (name != null && name.isNotEmpty) ? " ${name[0].toUpperCase()}" : "G",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            //TODO name add users
          },
          child: Text(
            (name != null && name.isNotEmpty) ? name : "Guest",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.100001,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              FirebaseServices().logOut().then((value) {
                // ignore: use_build_context_synchronously
                Navigator.of(context).pushReplacementNamed(RoutesName.loginPage);
              });
            },
            label: Text("Logout"),
            icon: Icon(Icons.output_rounded),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(child: PasswordChangePage());
                },
              );
            },
            label: Text("Pasword change"),
            icon: Icon(Icons.password_sharp),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => Dialog(child: PasswordChangePage(isDelete: true)),
              );
            },
            label: Text("Account Delete."),
            icon: Icon(Icons.no_accounts_outlined),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              context.read<ThemeBloc>().add(ChangeTheme());
            },
            label: Text("Theme"),
            icon: Icon(Icons.password_sharp),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: PhoneVerificationDialog(
                    phone: FirebaseAuth.instance.currentUser!.phoneNumber ?? "",
                  ),
                ),
              );
            },
            label: Text("Phone number verification"),
            icon: Icon(Icons.phone),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AboutApp();
                },
              );
            },
            label: Text("About"),
            icon: Icon(Icons.info_rounded),
          ),
        ),
      ],
    ),
  );
}
