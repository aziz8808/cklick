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
  var changedImage = "images/rasm60.jpg";
  void changingImage(var img) {
    setState(() {
      switch (img) {
        case "1":
          changedImage = "Images/rasm49.jpg";
          break;
      }
      switch (img) {
        case "2":
          changedImage = "Images/rasm64.jpg";
          break;
      }
      switch (img) {
        case "3":
          changedImage = "Images/rasm46.jpg";
          break;
      }
      switch (img) {
        case "4":
          changedImage = "Images/rasm6.jpg";
          break;
      }
      switch (img) {
        case "5":
          changedImage = "Images/rasm35.jpg";
          break;
      }
    });
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
      body: Expanded(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(changedImage), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Center(
              child: Expanded(
                flex: 1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          changingImage("1");
                        },
                        child: Container(
                          height: 80,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("images/rasm49.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changingImage("2");
                        },
                        child: Container(
                          height: 80,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("images/rasm64.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changingImage('3');
                        },
                        child: Container(
                          height: 80,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("images/rasm46.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changingImage("4");
                        },
                        child: Container(
                          height: 80,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("images/rasm6.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changingImage("5");
                        },
                        child: Container(
                          height: 80,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("images/rasm35.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
