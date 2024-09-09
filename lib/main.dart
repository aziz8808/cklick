// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'dart:ui';
// import 'package:dars_1/Ucell.dart';
// import 'package:glass/glass.dart';

// import 'package:cupertino_icons/cupertino_icons.dart';
// import 'package:dars_1/Glass.dart';
import 'package:dars_1/third.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: First()));
}

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  int _selectedIndex = 0;

  final List<Widget> _pages1 = [
    Second(),
    Third(),
    First(),
    First(),
    First(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages1.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Icon(
              Icons.trolley,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  List name = [
    simple(
      rasm: "Images/myhome5.jpg",
      name: "IMEI-kodni            ro'yxatdan o'tqazish",
    ),
    simple(
      rasm: "Images/myhome6.jpg",
      name: "Internet-do'kon",
    ),
    simple(
      rasm: "Images/myhome4.jpg",
      name: "Raqam tanlash",
    ),
    simple(
      rasm: "Images/myhome.jpg",
      name: "Yangi tarmoq kodini qarshi oling",
    ),
    simple(
      rasm: "Images/myhome2.jpg",
      name: "Yangi tarmoq kodini qarshi oling",
    ),
    simple(
      rasm: "Images/myhome.jpg",
      name: "Yangi tarmoq kodini qarshi oling",
    ),
    simple(
      rasm: "Images/myhome3.jpg",
      name: "Yangi tarmoq kodini qarshi oling",
    ),
    simple(
      rasm: "Images/myhome8.jpg",
      name: "Yangi tarmoq kodini qarshi oling",
    ),
    simple(
      rasm: "Images/myhome7.jpg",
      name: "Yangi tarmoq kodini qarshi oling",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            iconTheme: IconThemeData(color: Colors.white),
            pinned: true,
            expandedHeight: 50,
            backgroundColor: Colors.black87,
            flexibleSpace: FlexibleSpaceBar(
                // background: Image(
                //   image: AssetImage("Images/water.jpg"),
                //   fit: BoxFit.cover,
                // ),
                ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 2),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => First()));
                  },
                  child: Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Second()));
                      },
                      child: Container(
                        height: 80,
                        width: 1500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: const Color.fromARGB(221, 57, 57, 57)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.bolt,
                                        size: 40,
                                        color: Colors.blue,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 5, bottom: 3),
                                            child: Text(
                                              "0",
                                              style: TextStyle(
                                                  fontSize: 35,
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          Text(
                                            "so'm",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 6, left: 15),
                                  child: Text(
                                    "Bu oyda cashback",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                            VerticalDivider(
                              color: Colors.grey,
                              width: 1,
                              thickness: 1,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.workspace_premium,
                                        size: 40,
                                        color: Colors.yellow,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Premium",
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.yellow,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 0, left: 10, top: 5),
                                  child: Text(
                                    "Obunani ulash",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => First()));
                          },
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(221, 57, 57, 57)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.trip_origin_outlined,
                                  size: 40,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Click Pass",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => First()));
                          },
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(221, 57, 57, 57)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.mobile_friendly_rounded,
                                  size: 40,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Click Boom",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => First()));
                          },
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(221, 57, 57, 57)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.qr_code_scanner_rounded,
                                  size: 40,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "QR-skaner",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hizmatlar",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Row(
                          children: [
                            Text(
                              "Hammasi",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => First()));
                                },
                                child: Icon(
                                  Icons.chevron_right,
                                  size: 28,
                                  color: Colors.blue,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 230,
                    width: 500,
                    color: Color.fromARGB(300, 300, 300, 300),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => First()));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.people,
                                  size: 40,
                                  color: Colors.orange,
                                ),
                                Text(
                                  "Mening oilam",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => First()));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.home,
                                  size: 40,
                                  color: Colors.purple,
                                ),
                                Text(
                                  "Mening uyim",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => First()));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.car_repair,
                                  size: 40,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Mening avto",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => First()));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 40,
                                  color: Colors.deepOrange,
                                ),
                                Text(
                                  "Hayriya",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => First()));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.fastfood_sharp,
                                  size: 40,
                                  color: Colors.orange,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 30,
                                  ),
                                  child: Text(
                                    "Taomlar yetkazish",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => First()));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.airplanemode_on,
                                  size: 40,
                                  color: Colors.green,
                                ),
                                Text(
                                  "Avia chiptalar",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => First()));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.movie_creation_outlined,
                                  size: 40,
                                  color: Colors.green,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: Text(
                                    "Kinoteatrga  chiptalar",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => First()));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.bolt,
                                  size: 40,
                                  color: Colors.green,
                                ),
                                Text(
                                  "Poverbanklar",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, right: 250),
                    child: Text(
                      "Mobile aloqa uchun to'lov",
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 0),
                        child: Container(
                          height: 100,
                          width: 300,
                          // color: Colors.white,
                          child: TextField(
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            obscureText: false,
                            cursorColor: Colors.white,
                            maxLength: 200,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => First()));
                                    },
                                    child: Icon(
                                      CupertinoIcons.person_crop_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                fillColor: Colors.white,
                                hoverColor: Colors.white,
                                focusColor: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => First()));
                          },
                          child: Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Text(
                                "To'lash",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: name.map((ism2) => rock(ism2)).toList(),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Joylarda To'lov",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Text(
                              "Hammasi",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => First()));
                                },
                                child: Icon(
                                  Icons.chevron_right,
                                  size: 28,
                                  color: Colors.blue,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 20, right: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => First()));
                          },
                          child: Container(
                            height: 80,
                            width: 5000,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white10,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("images/water.gif"),
                                            fit: BoxFit.cover),
                                        border: Border.all(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Amir textile Qo'qon",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            CupertinoIcons
                                                .arrow_up_right_diamond,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "2.2 km",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => First()));
                          },
                          child: Container(
                            height: 80,
                            width: 5000,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white10,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("images/water.gif"),
                                            fit: BoxFit.cover),
                                        border: Border.all(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Amir textile Qo'qon",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            CupertinoIcons
                                                .arrow_up_right_diamond,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "2.2 km",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 140, top: 20, bottom: 20, right: 140),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => First()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.square_grid_2x2,
                            color: Colors.blue,
                            size: 25,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Ekran Sozlamalari",
                            style: TextStyle(fontSize: 17, color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black87,
      drawer: Drawer(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.black87,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.black87),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => First()));
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.black87,
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Icon(
                                Icons.trip_origin,
                                size: 50,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Azizbek",
                                    style: TextStyle(color: Colors.white)),
                                Text(
                                  "Rahmonov",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 0),
                                  child: Text(
                                    "+998 90 507 80 40",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => First()));
                      },
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.checkmark_seal,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Indentifikatsiyani boshlash",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.blue,
                ),
                title: Text(
                  'Obunalar',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  Icons.security_outlined,
                  color: Colors.blue,
                ),
                title: Text(
                  'Xavfsizlik',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                title: Text(
                  'Sozlamalar',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  Icons.headset_mic_rounded,
                  color: Colors.blue,
                ),
                title: Text(
                  'Qollab quvatlash hizmati',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.exclamationmark_circle,
                  color: Colors.blue,
                ),
                title: Text(
                  'Dastur haqida',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
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
      child: InkWell(
        onTap: () {
          Navigator.push(
              ism2, MaterialPageRoute(builder: (context) => First()));
        },
        child: Container(
          height: 150,
          width: 150,
          color: Colors.black12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  ism2.rasm,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
