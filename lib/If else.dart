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
  List name = [
    "Images/myhome.jpg",
    "Images/myhome2.jpg",
    "Images/myhome3.jpg",
    "Images/myhome4.jpg",
    "Images/myhome5.jpg",
    "Images/myhome6.jpg",
    "Images/bugatti.jpg",
    "Images/china.jpg",
  ];
  Color rang = Colors.blue;

  void rangi(String color) {
    if (color == "red") {
      setState(() {
        rang = Colors.red;
      });
    } else if (color == "green") {
      setState(() {
        rang = Colors.green;
      });
    } else if (color == "blue") {
      setState(() {
        rang = Colors.blue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 100,
            color: rang,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => rangi("red"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text('red'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => rangi("green"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: Text('green'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => rangi("blue"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text('blue'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
