import 'dart:ui';
// import 'package:dars_1/Ucell.dart';
// import 'package:glass/glass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

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
  int number = 0;
  int qiymat = 0;
  int qoldiq = 0;

  void sanoq() {
    setState(() {
      number++;
      qiymat = (number / 33).floor();
      qoldiq = number - (qiymat * 33).floor();
    });
  }

  void reset() {
    setState(() {
      number = 0;
      qiymat = 0;
      qoldiq = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            "Tasbeh",
            style: TextStyle(
              fontFamily: "name2",
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Images/page3.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: FittedBox(
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage("Images/page3.jpg"),
                                child: Center(
                                  child: FittedBox(
                                    child: Text(
                                      number.toString(),
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Expanded(
                            child: FittedBox(
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage("Images/page3.jpg"),
                                child: Center(
                                  child: FittedBox(
                                    child: Text(
                                      qiymat.toString(),
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("Images/page3.jpg"),
                        child: Center(
                          child: FittedBox(
                            child: Text(
                              qoldiq.toString(),
                              style:
                                  TextStyle(fontSize: 50, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text("Total",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontFamily: "name")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 70),
                    child: InkWell(
                      onTap: () {
                        sanoq();
                      },
                      child: Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          image: DecorationImage(
                              image: AssetImage("Images/page3.jpg"),
                              fit: BoxFit.cover),
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            "Tap",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontFamily: "name"),
                          ),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50, left: 250),
                    child: InkWell(
                      onTap: () {
                        reset();
                      },
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            // image: DecorationImage(
                            //     image: AssetImage("images/page6.jpg"),
                            //     fit: BoxFit.cover),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.blue,
                                  Colors.white24,
                                  Colors.blue,
                                ])),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            "Reset",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: "name"),
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


               

 
              // ElevatedButton(
              //   onPressed: () {
              //     reset();
              //   },
              //   child: Text("Reset"),
              // ),



// class simple {
//   IconData? simble;
//   String? ism;
//   String? info;
//   String? vaqt;
//   String? rasm;
//   String? name;
//   String? top;
//   String? up;
//   String? down;
//   simple({
//     this.simble,
//     this.ism,
//     this.info,
//     this.vaqt,
//     this.rasm,
//     this.name,
//     this.top,
//     this.up,
//     this.down,
//   });
// }

// Widget rock(ism2) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: ClipRRect(
//       borderRadius: BorderRadius.all(Radius.circular(30)),
//       child: Container(
//         height: 200,
//         width: 200,
//         color: Colors.black12,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 130,
//               width: 200,
//               child: Image.asset(
//                 ism2.rasm,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Text(
//                 ism2.name,
//                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
