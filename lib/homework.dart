import 'dart:ui';
// import 'package:dars_1/Ucell.dart';
// import 'package:dars_1/Glass.dart';
// import 'package:glass/glass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: work()));
}

class work extends StatefulWidget {
  const work({super.key});

  @override
  State<work> createState() => _workState();
}

class _workState extends State<work> {
  bool isChatsSelected = true;
  bool isStatusSelected = false;
  bool isCallsSelected = false;

  void _onTabSelected(int index) {
    setState(() {
      isChatsSelected = index == 0;
      isStatusSelected = index == 1;
      isCallsSelected = index == 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.white,
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 8, 0, 154),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(100, 120))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.photo_camera_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text(
                          "ModyChat",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontFamily: "name2",
                              fontWeight: FontWeight.w900),
                        ),
                        Icon(
                          Icons.search_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 40),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.blueGrey.shade100,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _buildTabItem(
                              title: "Chats",
                              isSelected: isChatsSelected,
                              onTap: () => _onTabSelected(0),
                            ),
                            _buildTabItem(
                              title: "Status",
                              isSelected: isStatusSelected,
                              onTap: () => _onTabSelected(1),
                            ),
                            _buildTabItem(
                              title: "Calls",
                              isSelected: isCallsSelected,
                              onTap: () => _onTabSelected(2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Display corresponding content
                ],
              ),
            ),
          ),
          Container(
            height: 680,
            width: double.infinity,
            color: Color.fromARGB(255, 8, 0, 154),
            child: Container(
              height: 680,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.elliptical(100, 120))),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: Row(
                        children: [
                          Text(
                            "All Calls",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Icon(
                              CupertinoIcons.list_bullet,
                              size: 35,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 21),
                      child: Row(
                        children: [
                          Text(
                            "Friends",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "name2",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 420,
                        color: Colors.white,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("images/rasm55.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Alisa Rodrigez",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "(3) 15 July, 13:27",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "name2",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Icon(
                                Icons.wifi_calling_3_outlined,
                                color: Colors.orange,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 420,
                        color: Colors.white,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("images/rasm50.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Pedro",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "35 July, 20:23",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "name2",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Icon(
                                Icons.add_ic_call_outlined,
                                color: Colors.blue,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 420,
                        color: Colors.white,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("images/rasm39.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "John Rodrigez",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "(3) 15 July, 13:27",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "name2",
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Icon(
                                Icons.call,
                                color: Colors.red,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "See more",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.red),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text(
                        "Group Massage",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            fontFamily: "name2",
                            color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 420,
                        color: Colors.white,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("images/rasm19.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Meetup 2020",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "(3) 15 July, 13:27",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "name2",
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120),
                              child: Icon(
                                Icons.call_end_rounded,
                                color: Colors.green,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 420,
                        color: Colors.white,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("images/rasm59.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "James",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "(5) 22 July, 12:30",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "name2",
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: Icon(
                                Icons.call,
                                color: Colors.yellow,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(children: [
                          Text(
                            "See more",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.red),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.red,
                            ),
                          )
                        ]))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildTabItem({
  required String title,
  required bool isSelected,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.blueGrey.shade900 : Colors.blueGrey.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
