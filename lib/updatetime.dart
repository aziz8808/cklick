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
  String currentTime = "";

  void updateTime() {
    setState(() {
      currentTime = DateTime.now().toString();
    });
    Future.delayed(Duration(milliseconds: 1), updateTime);
  }

  @override
  void initState() {
    super.initState();
    updateTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              currentTime,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
