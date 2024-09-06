import 'dart:ui';
import 'package:dars_1/Ucell.dart';
// import 'package:glass/glass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:carousel_slider/carousel_slider.dart';

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MY()));
}

class MY extends StatefulWidget {
  const MY({super.key});

  @override
  State<MY> createState() => _MYState();
}

class _MYState extends State<MY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Center(
          child: Text(
            "Glass",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyWidget()));
        },
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/myhome8.jpg"), fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 1,
                          sigmaY: 1,
                        ),
                        child: Container(
                            height: 300,
                            width: 500,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.blue.withOpacity(0.4),
                                  Colors.green.withOpacity(0.4),
                                ]),
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 40, top: 10),
                                      child: Text(
                                        "Visa",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.white,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 80,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 20),
                                  child: Text(
                                    "6216 6102 0001 6587 0100",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "02/12",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 350,
                                    ),
                                    Text(
                                      "UZB",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class simple {
  IconData? simble;
  String? ism;
  String? info;
  String? vaqt;
  String? rasm;
  String? name;
  String? top;
  String? up;
  String? down;
  simple({
    this.simble,
    this.ism,
    this.info,
    this.vaqt,
    this.rasm,
    this.name,
    this.top,
    this.up,
    this.down,
  });
}

Widget rock(ism2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: Container(
        height: 200,
        width: 200,
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              width: 200,
              child: Image.asset(
                ism2.rasm,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                ism2.name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class Yangi extends StatefulWidget {
  const Yangi({super.key});

  @override
  State<Yangi> createState() => _YangiState();
}

class _YangiState extends State<Yangi> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
