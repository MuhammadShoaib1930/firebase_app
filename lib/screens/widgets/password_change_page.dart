import 'package:firebase_app/core/routes/routes_name.dart';
import 'package:firebase_app/core/services/firebase_services.dart';
import 'package:firebase_app/core/services/form_services.dart';
import 'package:flutter/material.dart';

class PasswordChangePage extends StatefulWidget {
  final bool isDelete;
  const PasswordChangePage({super.key, this.isDelete = false});

  @override
  State<PasswordChangePage> createState() => _PasswordChangePageState();
}

class _PasswordChangePageState extends State<PasswordChangePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String oldPassword = "";
  String password1 = "";
  String password2 = "";

  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;
    return SizedBox(
      width: wi * 0.8,
      height: (widget.isDelete) ? he * 0.3 : he * 0.6,
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: 15,
            children: [
              Text(
                "Password change dialog.",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              TextFormField(
                autovalidateMode: AutovalidateMode.onUnfocus,
                key: ValueKey("oldPassword"),
                onSaved: (newValue) {
                  oldPassword = newValue!;
                },
                validator: FormServices.validationPassword,
                decoration: InputDecoration(
                  labelText: widget.isDelete ? "Enter password!" : "Enter oldPassword",
                  border: OutlineInputBorder(),
                ),
              ),
              if (!widget.isDelete) Text("Enter new password."),
              if (!widget.isDelete)
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUnfocus,
                  key: ValueKey("password1"),

                  onSaved: (newValue) {
                    password1 = newValue!;
                  },
                  validator: FormServices.validationPassword,
                  decoration: InputDecoration(
                    labelText: "new passsword",

                    border: OutlineInputBorder(),
                  ),
                ),
              if (!widget.isDelete)
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUnfocus,
                  key: ValueKey("password2"),
                  onSaved: (newValue) {
                    password2 = newValue!;
                  },
                  validator: FormServices.validationPassword,
                  decoration: InputDecoration(
                    labelText: "confrom passsword",
                    border: OutlineInputBorder(),
                  ),
                ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 20,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        if (password1 == password1) {
                          if (widget.isDelete) {
                            FirebaseServices().deleteAccount(oldPassword);
                            Navigator.pushReplacementNamed(context, RoutesName.signinPage);
                          } else {
                            FirebaseServices().updatePassword(password1, oldPassword);
                            Navigator.pop(context);
                          }
                        }
                      }
                    },
                    child: Text("Sumbit"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
