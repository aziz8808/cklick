import 'package:carousel_slider/carousel_slider.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(children: [
          Expanded(
            child: Container(
              height: 250,
              width: 300,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 400,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ), // CarouselOptions
                items: name.map((item) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImagePage(salom: item),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          )
        ])));
  }
}

class ImagePage extends StatelessWidget {
  final String salom;

  ImagePage({required this.salom});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Viewer'),
      ), // AppBar
      body: Container(
        child: Center(
          child: Image.asset(salom, fit: BoxFit.cover),
        ),
      ), // Center
    ); // Scaffold
  }
}
