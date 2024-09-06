import 'package:flutter/material.dart';

void main() {
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
            drawer: Drawer(
                child: ListView(
              children: const [
                UserAccountsDrawerHeader(
                    accountName: Text("data"), accountEmail: Text("data"))
              ],
            )),
            body: Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/image4.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/image2.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/image5.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/image3.jpg"),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ))),
  );
}
