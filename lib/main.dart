import 'dart:ui';
// import 'package:dars_1/Ucell.dart';
// import 'package:dars_1/Glass.dart';
// import 'package:glass/glass.dart';
// import 'package:dars_1/bool.dart';
import 'package:dars_1/imthonclass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: work()));
}

class work extends StatefulWidget {
  const work({super.key});

  @override
  State<work> createState() => _workState();
}

class _workState extends State<work> {
  final List<simple> name = [
    simple(
      name: "5 Coffee Beans you",
      up: "Images/imt.jpg",
    ),
    simple(
      name: "5 Coffee Beans you",
      up: "Images/imt2.jpg",
    ),
    simple(
      name: "5 Coffee Beans you",
      up: "Images/imt5.jpg",
    ),
    simple(
      name: "5 Coffee Beans you",
      up: "Images/imt.jpg",
    ),
    simple(
      name: "5 Coffee Beans you",
      up: "Images/imt5.jpg",
    ),
    simple(
      name: "5 Coffee Beans you",
      up: "Images/im9t.jpg",
    ),
    simple(
      name: "5 Coffee Beans you",
      up: "Images/imt2.jpg",
    ),
    simple(
      name: "5 Coffee Beans you",
      up: "Images/imt5.jpg",
    ),
    simple(
      name: "5 Coffee Beans you",
      up: "Images/imt.jpg",
    ),
    simple(
      name: "5 Coffee Beans you",
      up: "Images/imt9.jpg",
    ),
    simple(
      name: "5 Coffee Beans you",
      up: "Images/imt5.jpg",
    ),
  ];
  final List<CoffeeItem> coffeeItems = [
    CoffeeItem(
      name: 'Cappuccino',
      description: 'with Oat Milk',
      imagePath: 'images/imt8.jpg',
      price: 4.20,
      rating: 4.2,
      page: clas(), // Replace with your actual page
    ),
    CoffeeItem(
      name: 'Black Eye',
      description: 'with Oat Milk',
      imagePath: 'images/imt9.jpg',
      price: 7.56,
      rating: 4.0,
      page: clas2(), // Replace with your actual page
    ),
    CoffeeItem(
      name: 'Latte',
      description: 'with Almond Milk',
      imagePath: 'images/imt.jpg',
      price: 5.50,
      rating: 4.5,
      page: clas9(), // Replace with your actual page
    ),
    CoffeeItem(
      name: 'Americano',
      description: 'with chockolate',
      imagePath: 'images/imt9.jpg',
      price: 2.53,
      rating: 2.2,
      page: clas3(),
    ),
    CoffeeItem(
      name: 'Long Black',
      description: 'with white milk',
      imagePath: 'images/imt2.jpg',
      price: 5.193,
      rating: 3.2,
      page: clas7(),
    ),
    CoffeeItem(
      name: 'Espresso',
      description: 'Strong and Bold',
      imagePath: 'images/imt.jpg',
      price: 5.28,
      rating: 4.8,
      page: clas4(),
    ),
    CoffeeItem(
      name: 'Machination',
      description: 'with oat milk',
      imagePath: 'images/imt5.jpg',
      price: 3.75,
      rating: 4.8,
      page: clas5(),
    ),
    CoffeeItem(
      name: 'Maccihito',
      description: 'with Chockolate',
      imagePath: 'images/imt.jpg',
      price: 3.10,
      rating: 3.2,
      page: ckas6(),
    ),
  ];
  String searchText = '';
  String topText = 'Find the best\nCoffee for you';
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[850],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Dot(),
                            SizedBox(width: 2),
                            Dot(),
                          ],
                        ),
                        SizedBox(height: 2),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Dot(),
                            SizedBox(width: 2),
                            Dot(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, right: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(8),
                    child: FlutterLogo(
                      size: 23,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    topText,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      controller: _controller,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Find Your Coffee...',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              topText = searchText;
                            });
                          },
                          child: Icon(Icons.coffee, color: Colors.grey),
                        ),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      ),
                      onChanged: (value) {
                        setState(() {
                          searchText = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: coffeeItems.map((item) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => item.page),
                        );
                      },
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xFF1E1E1E),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    item.imagePath,
                                    height: 120,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.6),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10)),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.amber, size: 14),
                                        SizedBox(width: 2),
                                        Text(
                                          item.rating.toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Text(
                              item.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              item.description,
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 12),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '\$ ${item.price.toStringAsFixed(2)}',
                              style: TextStyle(
                                color: Color(0xFFD17842),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.black,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: name.map((item) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImagePage(
                                  up: item.up!), // Ensure up is not null
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Container(
                              height: 90,
                              width: double.infinity,
                              color: Color(0xFF1E1E1E),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image: AssetImage(item
                                              .up!), // Ensure up is not null
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.name ?? '',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "Must try!",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class simple {
  IconData? simble;
  String? ism;
  String? info;
  String? vaqt;

  String? name;
  String? top;
  String? up;
  String? down;
  simple({
    this.simble,
    this.ism,
    this.info,
    this.vaqt,
    this.name,
    this.top,
    this.up,
    this.down,
  });
}

class Dot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: Colors.grey[600],
        shape: BoxShape.circle,
      ),
    );
  }
}

class ImagePage extends StatelessWidget {
  final String up;

  ImagePage({required this.up});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Viewer'),
      ),
      body: Container(
        child: Center(
          child: Image.asset(up, fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class CoffeeItem {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final double rating;
  final Widget page;

  CoffeeItem({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.rating,
    required this.page,
  });
}
