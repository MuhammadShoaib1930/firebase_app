import 'package:firebase_app/blocs/bloc/auth_bloc.dart';
import 'package:firebase_app/core/services/form_services.dart';
import 'package:firebase_app/core/assets/assets_name.dart';
import 'package:firebase_app/core/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninLoginPage extends StatefulWidget {
  const SigninLoginPage({super.key});

  @override
  State<SigninLoginPage> createState() => _SigninLoginPageState();
}

class _SigninLoginPageState extends State<SigninLoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String confromPassword = "";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              loginPage: () {
                if (mounted) {
                  Navigator.of(context).pushReplacementNamed(RoutesName.homePage);
                }
              },
            );
          },
          builder: (context, state) {
            return state.when(
              loginPage: () {
                return SizedBox();
              },
              success: (isObscure, siginPage, isForget) {
                return Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: 10,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: double.infinity,
                            child: Image.asset(
                              (siginPage) ? AssetsName.icSign : AssetsName.icLogin,
                            ),
                          ),
                          TextFormField(
                            key: ValueKey("email"),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Email",
                            ),
                            onSaved: (newValue) {
                              if (newValue != null) {
                                email = newValue;
                              }
                            },
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: FormServices.validationEmail,
                          ),

                          if (!isForget)
                            TextFormField(
                              obscureText: isObscure,
                              key: ValueKey("password"),
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: FormServices.validationPassword,
                              onSaved: (newValue) {
                                if (newValue != null) {
                                  password = newValue;
                                }
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "password",
                                suffixIcon: InkWell(
                                  onTap: () {
                                    context.read<AuthBloc>().add(
                                      AuthEvent.hideText(isObscure: !isObscure),
                                    );
                                  },
                                  child: Icon((isObscure) ? Icons.remove_red_eye : Icons.password),
                                ),
                              ),
                            ),
                          if (siginPage && !isForget)
                            TextFormField(
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: FormServices.validationPassword,
                              obscureText: isObscure,
                              onSaved: (newValue) {
                                if (newValue != null) {
                                  confromPassword = newValue;
                                }
                              },
                              key: ValueKey("conformPassword"),
                              decoration: InputDecoration(
                                suffixIcon: InkWell(
                                  onTap: () {
                                    context.read<AuthBloc>().add(
                                      AuthEvent.hideText(isObscure: !isObscure),
                                    );
                                  },
                                  child: Icon((isObscure) ? Icons.remove_red_eye : Icons.password),
                                ),
                                border: OutlineInputBorder(),
                                labelText: "Confrom password",
                              ),
                            ),
                          SizedBox(
                            width: 350,
                            child: ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();
                                  if (siginPage) {
                                    context.read<AuthBloc>().add(
                                      AuthEvent.signin(
                                        email: email,
                                        password: password,
                                        confromPassword: confromPassword,
                                      ),
                                    );
                                  } else {
                                    if (isForget) {
                                      context.read<AuthBloc>().add(
                                        AuthEvent.forgetPassword(email: email),
                                      );
                                    } else {
                                      context.read<AuthBloc>().add(
                                        AuthEvent.login(email: email, password: password),
                                      );
                                    }
                                  }
                                }
                              },
                              child: Text(
                                (siginPage)
                                    ? "Sign In"
                                    : (isForget)
                                    ? "Forget"
                                    : "Login",
                              ),
                            ),
                          ),
                          if (isForget || !siginPage)
                            TextButton(
                              onPressed: () {
                                if (isForget) {
                                  context.read<AuthBloc>().add(
                                    AuthEvent.forgetPage(isForget: false),
                                  );
                                } else {
                                  context.read<AuthBloc>().add(
                                    AuthEvent.forgetPage(isForget: true),
                                  );
                                }
                              },
                              child: Text((isForget) ? "Login page" : "Forget password!"),
                            ),
                          if (!isForget)
                            Row(
                              mainAxisAlignment: .center,
                              children: [
                                Text((siginPage) ? "I have already" : "I didn’t have"),
                                TextButton(
                                  onPressed: () {
                                    context.read<AuthBloc>().add(
                                      AuthEvent.singinPage(isSingpage: !siginPage),
                                    );
                                  },
                                  child: Text(
                                    "account!",
                                    style: TextStyle(fontSize: 18, color: Colors.brown),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              error: (error) {
                return Center(child: Text(error));
              },
              loading: () {
                return Center(child: CircularProgressIndicator());
              },
              initial: () {
                context.read<AuthBloc>().add(AuthEvent.singinPage(isSingpage: true));
                return SizedBox();
              },
            );
          },
        ),
      ),
    );
  }
}
