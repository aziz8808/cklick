// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingCart(),
    ),
  );
}

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  Color rang = Colors.red;
  Color rang2 = Colors.yellow;
  Color rang3 = Colors.green;
  String nom = "";
  String nom2 = "";
  String nom3 = "";
  void vaqt() async {
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        rang = Colors.red;
        rang2 = Colors.black;
        rang3 = Colors.black;
      });
    });

    await Future.delayed(Duration(milliseconds: 1), () {
      setState(() {
        nom = "6";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom = "5";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom = "4";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom = "3";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom = "2";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom = "1";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom = "";
      });
    });

    await Future.delayed(Duration(milliseconds: 1), () {
      setState(() {
        rang = Colors.black;
        rang2 = Colors.yellow;
        rang3 = Colors.black;
      });
    });

    await Future.delayed(Duration(milliseconds: 1), () {
      setState(() {
        nom2 = "3";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom2 = "2";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom2 = "1";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom2 = "";
      });
    });
    await Future.delayed(Duration(milliseconds: 1), () {
      setState(() {
        rang = Colors.black;
        rang2 = Colors.black;
        rang3 = Colors.green;
      });
    });

    await Future.delayed(Duration(milliseconds: 1), () {
      setState(() {
        nom3 = "5";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom3 = "4";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom3 = "3";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom3 = "2";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom3 = "1";
      });
    });
    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        nom3 = "";
      });
    });
    await Future.delayed(Duration(milliseconds: 1), () {
      setState(() {
        vaqt();
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    vaqt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "O'zgaruvchan container",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          toolbarHeight: 40,
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Center(
            child: Container(
          height: 400,
          width: 200,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: rang,
                child: Text(
                  nom,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundColor: rang2,
                child: Text(
                  nom2,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundColor: rang3,
                child: Text(
                  nom3,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              )
            ],
          ),
        )));
  }
}
//String nom = "10";
  // void vaqt() async {
  //   await Future.delayed(Duration(seconds: 1), () {
  //     setState(() {
  //       nom = "9";
  //       print(nom); // Print the value of nom
  //     });
  //   });

  //   await Future.delayed(Duration(seconds: 1), () {
  //     setState(() {
  //       nom = "8";
  //       print(nom); // Print the value of nom
  //     });
  //   });
  //   await Future.delayed(Duration(seconds: 1), () {
  //     setState(() {
  //       nom = "7";
  //       print(nom); // Print the value of nom
  //     });
  //   });
  //   await Future.delayed(Duration(seconds: 1), () {
  //     setState(() {
  //       nom = "6";
  //       print(nom); // Print the value of nom
  //     });
  //   });
  //   await Future.delayed(Duration(seconds: 1), () {
  //     setState(() {
  //       nom = "5";
  //       print(nom); // Print the value of nom
  //     });
  //   });
  //   await Future.delayed(Duration(seconds: 1), () {
  //     setState(() {
  //       nom = "4";
  //       print(nom); // Print the value of nom
  //     });
  //   });
  //   await Future.delayed(Duration(seconds: 1), () {
  //     setState(() {
  //       nom = "3";
  //       print(nom); // Print the value of nom
  //     });
  //   });
  //   await Future.delayed(Duration(seconds: 1), () {
  //     setState(() {
  //       nom = "2";
  //       print(nom); // Print the value of nom
  //     });
  //   });
  //   await Future.delayed(Duration(seconds: 1), () {
  //     setState(() {
  //       nom = "1";
  //       print(nom); // Print the value of nom
  //     });
  //   });
  //   await Future.delayed(Duration(seconds: 5), () {
  //     setState(() {
  //       "Buuuum";
  //       print(nom); // Print the value of nom
  //     });
  //   });
  //   await Future.delayed(Duration(seconds: 2), () {
  //     setState(() {
  //       vaqt();
  //       print(nom); // Print the value of nom
  //     });
  //   });
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   vaqt();
  // }
