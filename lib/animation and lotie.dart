import 'dart:ui';
// import 'package:dars_1/Ucell.dart';
// import 'package:glass/glass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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

class _MYState extends State<MY> with TickerProviderStateMixin {
  late final AnimationController ism =
      AnimationController(duration: Duration(seconds: 2), vsync: this)
        ..repeat(reverse: true);
  late final Animation<double> lol =
      CurvedAnimation(parent: ism, curve: Curves.slowMiddle);
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
          automaticallyImplyLeading: true,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FadeTransition(
                  opacity: lol,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => my()));
                    },
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage("images/rasm56.jpg"),
                    ),
                  ),
                ),
              ]),
        ));
  }
}

class my extends StatefulWidget {
  const my({super.key});

  @override
  State<my> createState() => _myState();
}

class _myState extends State<my> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MY()));
        },
        child: Center(
            child: Lottie.asset(
          "images/anime.json",
          height: 200,
          width: 200,
        )),
      ),
    );
  }
}







































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

