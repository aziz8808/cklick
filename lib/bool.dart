import 'dart:ui';
// import 'package:dars_1/Ucell.dart';
// import 'package:dars_1/Glass.dart';
// import 'package:glass/glass.dart';
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
            child: InkWell(
      onTap: () {
        setState(() {
          red = !red;
        });
      },
      child: Container(
          height: 100,
          width: 300,
          color: red ? Colors.red : Color.fromARGB(255, 0, 81, 255)),
    )));
  }
}
