import 'package:firebase_app/blocs/bloc/auth_bloc.dart';
import 'package:firebase_app/core/routes/routes_name.dart';
import 'package:firebase_app/screens/data_entry_page.dart';
import 'package:firebase_app/screens/home_page.dart';
import 'package:firebase_app/screens/signin_login_page.dart';
import 'package:firebase_app/screens/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutesName.splashPage:
      return MaterialPageRoute(builder: (context) => SplashPage());
    case RoutesName.homePage:
      return MaterialPageRoute(builder: (context) => HomePage());
    case RoutesName.dataEntryPage:
      return MaterialPageRoute(
        builder: (context) => DataEntryPage(
          name: (settings.arguments as List)[0],
          age: (settings.arguments as List)[1],
          task: (settings.arguments as List)[2],
        ),
      );
    case RoutesName.signinPage || RoutesName.loginPage:
      return MaterialPageRoute(
        builder: (context) =>
            BlocProvider(create: (context) => AuthBloc(), child: SigninLoginPage()),
      );
    default:
      return MaterialPageRoute(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: Center(child: Text("There is no any Route this name \n${settings.name}")),
            ),
          );
        },
      );
  }
}
