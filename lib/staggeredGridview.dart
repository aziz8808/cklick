import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
            // drawer: Drawer(
            //     child: ListView(
            //   children: const [
            //     UserAccountsDrawerHeader(
            //         accountName: Text("data"), accountEmail: Text("data"))
            //   ],
            // )),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: StaggeredGrid.count(
                  crossAxisCount: 8,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 3,
                        child: Container(
                          color: Colors.red,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 6,
                        mainAxisCellCount: 3,
                        child: Container(
                          color: Colors.yellow,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 4,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.blue,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.green,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 3,
                        child: Container(
                          color: Colors.red,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 6,
                        mainAxisCellCount: 3,
                        child: Container(
                          color: Colors.yellow,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 4,
                        child: Container(
                          color: Colors.pink,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.pink,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 4,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.orange,
                        )),
                  ],
                ),
              ),
            ))),
  );
}
