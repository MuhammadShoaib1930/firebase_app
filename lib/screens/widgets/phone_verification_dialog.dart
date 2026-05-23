import 'package:firebase_app/core/services/firebase_services.dart';
import 'package:firebase_app/core/services/form_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneVerificationDialog extends StatelessWidget {
  final String phone;
  const PhoneVerificationDialog({super.key, this.phone = ""});

  @override
  Widget build(BuildContext context) {
    String number = phone;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Form(
          key: formKey,
          child: Column(
            spacing: 10,
            children: [
              Text(
                "Phone verification!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                maxLength: 11,
                keyboardType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                initialValue: number,
                validator: FormServices.validationPhoneNumber,
                autovalidateMode: AutovalidateMode.onUnfocus,
                onSaved: (newValue) {
                  number = newValue!;
                },

                key: ValueKey("phone"),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "phone number!",
                ),
              ),
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.end,
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
                        FirebaseServices().phoneVerification(number);
                        Navigator.pop(context);
                      }
                    },
                    child: Text("Submit"),
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
