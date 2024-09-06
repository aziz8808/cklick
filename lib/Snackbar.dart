// import 'dart:ui';
// import 'package:dars_1/Ucell.dart';
// import 'package:dars_1/Glass.dart';
// import 'package:glass/glass.dart';
// import 'package:dars_1/bool.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: work()));
}

class work extends StatefulWidget {
  const work({super.key});

  @override
  State<work> createState() => _workState();
}

class _workState extends State<work> {
  bool red = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Login yoki parol hato"),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 5),
          action: SnackBarAction(
              label: "Tasdiqlash",
              onPressed: () {
                print("Good");
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => work()));
              }),
        ));
      },
      child: Text("Snack bar"),
    )));
  }
}
