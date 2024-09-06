// import 'package:carousel_slider/carousel_slider.dart';
// import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: MyWork()),
  );
}

class MyWork extends StatefulWidget {
  const MyWork({super.key});

  @override
  State<MyWork> createState() => _MyWorkState();
}

class _MyWorkState extends State<MyWork> {
  TextEditingController controller = TextEditingController(text: "");
  String nom = "";
  void ism(String text) {
    setState(() {
      String texts = text.toLowerCase();
      if (texts == "dushanba") {
        nom = " Monday";
      } else if (texts == "seshanba") {
        nom = " Tuesday";
      } else if (texts == "chorshanba") {
        nom = " Wednesday";
      } else if (texts == "payshanba") {
        nom = " Thursday";
      } else if (texts == "juma") {
        nom = " Friday!";
      } else if (texts == "shanba") {
        nom = "' Saturday";
      } else if (texts == "yakshanba") {
        nom = " Sunday";
      } else {
        nom = "Unknown Day";
      }
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Enter your login',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ism(controller.text);
              },
              child: Text('Check Time'),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(nom),
            )
          ],
        ),
      ),
    );
  }
}
