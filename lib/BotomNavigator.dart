import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyWidget()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Homework"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.message),
            ),
            Tab(
              icon: Icon(Icons.call),
            )
          ]),
        ),
        body: TabBarView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "No ",
                style: TextStyle(fontSize: 40, color: Colors.purple),
              ),
              Text(
                "messages ",
                style: TextStyle(fontSize: 40, color: Colors.purple),
              ),
              Text(
                "yet ",
                style: TextStyle(fontSize: 40, color: Colors.purple),
              ),
            ],
          ),
          MainScreen()
        ]),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  final List<Widget> _pages = [job(), job4(), job3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.people, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
      body: Center(
        child: _pages[_pageIndex],
      ),
    );
  }
}

class job extends StatefulWidget {
  const job({super.key});

  @override
  State<job> createState() => _jobState();
}

class _jobState extends State<job> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: Image.network(
                "https://i.pinimg.com/originals/7b/94/ff/7b94ffe05a2d426657be199ea18a8dc7.gif",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Call your favorite contacts",
              style: TextStyle(fontSize: 25, color: Colors.black38),
            ),
            Text(
              "with just one tap",
              style: TextStyle(fontSize: 25, color: Colors.black38),
            )
          ],
        ),
      ),
    );
  }
}

class job2 extends StatefulWidget {
  const job2({super.key});

  @override
  State<job2> createState() => _job2State();
}

class _job2State extends State<job2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: Colors.black38),
                ),
              );
            }, childCount: 20),
          ),
        ],
      ),
    );
  }
}

class job3 extends StatefulWidget {
  job3({super.key});

  @override
  State<job3> createState() => _job3State();
}

class _job3State extends State<job3> {
  List name = [
    Simple(
      rasm: "A",
      name: "Aizbek",
      info: "Azizbek@gmail.com",
    ),
    Simple(
      rasm: "J",
      name: "Jamolidin ",
      info: "Jamolidin@gmail.com",
    ),
    Simple(
      rasm: "Y",
      name: "Yusuphon ",
      info: "Yusuphon@gmail.com",
    ),
    Simple(
      rasm: "Y",
      name: " Yahyohon",
      info: "Yahyohon@gmail.com",
    ),
    Simple(
      rasm: "R",
      name: "Rizohon",
      info: "Rizohon@gmail.com",
    ),
    Simple(
      rasm: "A",
      name: "Abdulloh",
      info: "Abdulloh@gmail.com",
    ),
    Simple(
      rasm: "I",
      name: "Islomhon",
      info: "Islomhon@gmail.com",
    ),
    Simple(
      rasm: "A",
      name: " Azizhon",
      info: "ObitoUchiha@gmail.com",
    ),
    Simple(
      rasm: "R",
      name: "Rovshan",
      info: "Rovshan@gmail.com",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: name.map((ism) => dizay(ism)).toList(),
      )),
    );
  }
}

class Simple {
  String? name;
  String? info;
  String? rasm;
  Simple({
    this.info,
    this.rasm,
    this.name,
  });
}

Widget dizay(ism) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Row(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.blue,
          child: Center(
            child: Text(
              ism.rasm,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ism.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              ism.info,
              style: TextStyle(fontSize: 17),
            )
          ],
        )
      ],
    ),
  );
}

class job4 extends StatefulWidget {
  const job4({super.key});

  @override
  State<job4> createState() => _job4State();
}

class _job4State extends State<job4> {
  List name2 = [
    Simple(
      rasm: "P",
      name: "Pratap Kumar",
      info: "pratap@gmail.com",
    ),
    Simple(
      rasm: "M",
      name: "Messi",
      info: "Messi@gmail.com",
    ),
    Simple(
      rasm: "R",
      name: "Ronaldo ",
      info: "Ronaldo@gmail.com",
    ),
    Simple(
      rasm: "A",
      name: " Andrew Tate",
      info: "Andrew@gmail.com",
    ),
    Simple(
      rasm: "E",
      name: "Elon Mask",
      info: "Elon@gmail.com",
    ),
    Simple(
      rasm: "D",
      name: "Donald Tramp",
      info: "Donal@gmail.com",
    ),
    Simple(
      rasm: "V",
      name: "Vladimir Putin",
      info: "Putin@gmail.com",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: name2.map((ism) => dizay2(ism)).toList(),
      )),
    );
  }
}

class Simple2 {
  String? name;
  String? info;
  String? rasm;
  Simple2({
    this.info,
    this.rasm,
    this.name,
  });
}

Widget dizay2(ism) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Row(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.blue,
          child: Center(
            child: Text(
              ism.rasm,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ism.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              ism.info,
              style: TextStyle(fontSize: 17),
            )
          ],
        )
      ],
    ),
  );
}
