import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  List images = [
    "Images/myhome5.jpg",
    "Images/myhome.jpg",
    "Images/myhome2.jpg",
    "Images/myhome3.jpg",
    "Images/myhome4.jpg",
    "Images/myhome5.jpg",
    "Images/myhome6.jpg",
    "Images/myhome7.jpg",
    "Images/myhome8.jpg",
  ];
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purple,
              title: const Center(
                child: Text(
                  "Hello my friends",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              centerTitle: true,
            ),
            // drawer: Drawer(
            //     child: ListView(
            //   children: const [
            //     UserAccountsDrawerHeader(
            //         accountName: Text("data"), accountEmail: Text("data"))
            //   ],
            // )),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: StaggeredGrid.count(
                      crossAxisCount: 12,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: [
                        StaggeredGridTile.count(
                            crossAxisCellCount: 4,
                            mainAxisCellCount: 6,
                            child: Container(
                              color: Colors.red,
                              child: Image.asset(
                                "images/myhome.jpg",
                                fit: BoxFit.cover,
                              ),
                            )),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2,
                            child: Container(
                              color: Colors.yellow,
                              child: Image.asset(
                                "images/myhome2.jpg",
                                fit: BoxFit.cover,
                              ),
                            )),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2,
                            child: Container(
                              color: Colors.blue,
                              child: Image.asset(
                                "images/myhome3.jpg",
                                fit: BoxFit.cover,
                              ),
                            )),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2,
                            child: Container(
                              color: Colors.green,
                              child: Image.asset(
                                "images/myhome4.jpg",
                                fit: BoxFit.cover,
                              ),
                            )),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2,
                            child: Container(
                              color: Colors.red,
                              child: Image.asset(
                                "images/myhome5.jpg",
                                fit: BoxFit.cover,
                              ),
                            )),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 4,
                            child: Container(
                              color: Colors.yellow,
                              child: Image.asset(
                                "images/myhome6.jpg",
                                fit: BoxFit.cover,
                              ),
                            )),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 6,
                            mainAxisCellCount: 4,
                            child: Container(
                              color: Colors.pink,
                              child: Image.asset(
                                "images/myhome7.jpg",
                                fit: BoxFit.cover,
                              ),
                            )),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 6,
                            mainAxisCellCount: 6,
                            child: Container(
                              color: Colors.pink,
                              child: Image.asset(
                                "images/myhome9.jpg",
                                fit: BoxFit.cover,
                              ),
                            )),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 6,
                            mainAxisCellCount: 6,
                            child: Container(
                              color: Colors.orange,
                              child: Image.asset(
                                "images/myhome8.jpg",
                                fit: BoxFit.cover,
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: CarouselSlider(
                          items: images
                              .map(
                                (a) => ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    a,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                              .toList(),
                          options: CarouselOptions(
                              initialPage: 1,
                              aspectRatio: 3 / 3,
                              viewportFraction: 0.8,
                              autoPlay: true,
                              reverse: false,
                              autoPlayInterval: Duration(seconds: 2),
                              autoPlayAnimationDuration: Duration(seconds: 2),
                              enlargeCenterPage: true,
                              pageSnapping: true,
                              autoPlayCurve: Curves.slowMiddle,
                              enlargeFactor: 5,
                              scrollDirection: Axis.horizontal)),
                    ),
                  )
                ],
              ),
            ))),
  );
}
