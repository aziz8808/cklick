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
  var changedcolor = Colors.red;
  void changingcolor(var color) {
    setState(() {
      switch (color) {
        case "1":
          changedcolor = Colors.blue;
          break;
      }
      switch (color) {
        case "2":
          changedcolor = Colors.green;
          break;
      }
      switch (color) {
        case "3":
          changedcolor = Colors.yellow;
          break;
      }
      switch (color) {
        case "4":
          changedcolor = Colors.grey;
          break;
      }
      switch (color) {
        case "5":
          changedcolor = Colors.orange;
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
          color: changedcolor,
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
                          changingcolor("1");
                        },
                        child: Container(
                          height: 80,
                          width: 200,
                          color: Colors.blue,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changingcolor("2");
                        },
                        child: Container(
                          height: 80,
                          width: 200,
                          color: Colors.green,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changingcolor('3');
                        },
                        child: Container(
                          height: 80,
                          width: 200,
                          color: Colors.yellow,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changingcolor("4");
                        },
                        child: Container(
                          height: 80,
                          width: 200,
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changingcolor("5");
                        },
                        child: Container(
                          height: 80,
                          width: 200,
                          color: Colors.orange,
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
