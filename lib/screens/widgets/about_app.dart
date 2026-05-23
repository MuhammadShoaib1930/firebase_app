import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          spacing: 15,
          children: [
            Text(
              "About app information",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Divider(),
            SelectableText("Developer information"),
            SelectableText("name: Muhammad shoaib"),
            SelectableText("email: shoaibsn54321@gmail.com"),
            SelectableText("phone: 03238602527"),
            SelectableText("wattsapp: 03238602527"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        ),
      ),
    );
  }
}
