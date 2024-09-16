// import 'dart:ui';
// import 'package:dars_1/Ucell.dart';
// import 'package:dars_1/Glass.dart';
// import 'package:glass/glass.dart';
import 'package:intl/intl.dart';
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
  DateTime currentTime = DateTime.now();
  dynamic yozuvli = "";
  dynamic sonli = "";
  void updateTime() {
    setState(() {
      currentTime = DateTime.now();
      yozuvli = DateFormat.yMMMMEEEEd().format(currentTime);
      sonli = DateFormat("MM - dd - HH - s - y").format(currentTime);
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
              yozuvli,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              sonli,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
