// import 'package:carousel_slider/carousel_slider.dart';
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
  TextEditingController controller = TextEditingController();
  String nom = "";
  void ism(int text) {
    setState(() {
      if (text >= 5 && text < 11) {
        nom = "Good morning";
      } else if (text >= 11 && text < 17) {
        nom = "Good afternoon";
      } else if (text >= 17 && text < 22) {
        nom = "Good evening";
      } else {
        nom = "Good night";
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
                // Parse the input text to an integer
                int? inputNumber = int.tryParse(controller.text);
                if (inputNumber != null) {
                  ism(inputNumber);
                } else {
                  "Error";
                }
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
