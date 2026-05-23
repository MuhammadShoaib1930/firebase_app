import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/core/routes/routes_name.dart';
import 'package:firebase_app/core/services/firebase_services.dart';
import 'package:firebase_app/screens/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "";
  int age = 0;
  String task = "";
  @override
  Widget build(BuildContext context) {
  double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: appDrawer(context,name: name),
      appBar: AppBar(title: Text("Home page")),
      body: SafeArea(
        child: FutureBuilder(
          future: FirebaseServices().readData(),
          builder: (context, AsyncSnapshot<DocumentSnapshot<Object?>> snapshot) {
            if (snapshot.data != null && snapshot.hasData && snapshot.data!.exists) {
              name = snapshot.data!['name'];
              age = snapshot.data!['age'];
              task = snapshot.data!['task'];
              return SingleChildScrollView(
                child: Column(
                  spacing: 10,
                  children: [
                    Card(
                      child: SizedBox(
                        width: wid,
                        child: Text("Name: $name", style: TextStyle(fontSize: 22)),
                      ),
                    ),
                    Card(
                      child: SizedBox(
                        width: wid,
                        child: Text("Age: ${age.toString()}", style: TextStyle(fontSize: 22)),
                      ),
                    ),
                    Card(
                      child: SizedBox(
                        width: wid,
                        child: Text("Task: $task", style: TextStyle(fontSize: 18)),
                      ),
                    ),
                  ],
                ),
              );
            }
            return SizedBox();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            RoutesName.dataEntryPage,
            arguments: [name, age, task],
          );
        },
        child: Icon((name.isNotEmpty) ? Icons.update : Icons.add),
      ),
    );
  }
}
