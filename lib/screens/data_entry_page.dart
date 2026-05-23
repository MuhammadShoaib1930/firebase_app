import 'package:firebase_app/core/routes/routes_name.dart';
import 'package:firebase_app/core/services/firebase_services.dart';
import 'package:firebase_app/core/services/form_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DataEntryPage extends StatefulWidget {
  final String name;
  final int age;
  final String task;
  const DataEntryPage({super.key, this.name = "", this.age = 0, this.task = ""});

  @override
  State<DataEntryPage> createState() => _DataEntryPageState();
}

class _DataEntryPageState extends State<DataEntryPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String name = "";
  String task = "";
  int age = 0;
  @override
  Widget build(BuildContext context) {
    name = widget.name;
    age = widget.age;
    task = widget.task;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                spacing: 10,
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    key: ValueKey("Name"),
                    initialValue: name,
                    validator: FormServices.nameValidator,
                    onSaved: (newValue) {
                      name = newValue!;
                    },
                    decoration: InputDecoration(labelText: "Name", border: OutlineInputBorder()),
                  ),
                  TextFormField(
                    key: ValueKey("Age"),
                    initialValue: "$age",
                    validator: FormServices.ageValidator,
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onSaved: (newValue) {
                      if (newValue != null) {
                        age = int.parse(newValue.toString().trim());
                      }
                    },
                    decoration: InputDecoration(labelText: "Age", border: OutlineInputBorder()),
                  ),
                  TextFormField(
                    key: ValueKey("Task"),
                    initialValue: widget.task,
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    validator: FormServices.nameValidator,
                    onSaved: (newValue) {
                      task = newValue!;
                    },
                    minLines: 1,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(labelText: "Task", border: OutlineInputBorder()),
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          FirebaseServices().createDatabase({
                            "name": name,
                            "age": age,
                            "task": task,
                          });
                        }
                        Navigator.pushReplacementNamed(context, RoutesName.homePage);
                      },
                      child: Text("submit"),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, RoutesName.homePage);
                      },
                      child: Text("Cancel"),
                    ),
                  ),
                  if (name.isNotEmpty)
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (name.isNotEmpty) {
                            FirebaseServices().deleteData();
                          }
                          Navigator.pushReplacementNamed(context, RoutesName.homePage);
                        },
                        child: Text("Delete"),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
