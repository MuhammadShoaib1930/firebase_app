import 'package:firebase_app/blocs/bloc/theme_bloc.dart';
import 'package:firebase_app/core/routes/routes.dart';
import 'package:firebase_app/core/routes/routes_name.dart';
import 'package:firebase_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    BlocProvider(
      create: (context) => ThemeBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ThemeBloc, ThemeState, bool>(
      selector: (state) {
        return state.isDark;
      },
      builder: (context, state) {
        return MaterialApp(
          theme: (state) ? ThemeData.dark() : ThemeData.light(),

          onGenerateRoute: onGenerateRoute,
          initialRoute: RoutesName.splashPage,
        );
      },
    );
  }
}
