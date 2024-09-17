import 'package:dars_1/animation%20and%20lotie.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: const Myexam(),
    );
  }
}

class Myexam extends StatefulWidget {
  const Myexam({Key? key}) : super(key: key);

  @override
  _MyexamState createState() => _MyexamState();
}

class _MyexamState extends State<Myexam> {
  final TextEditingController _searchController = TextEditingController();

  // List of shoes as Map
  final List<Map<String, dynamic>> shoes = [
    {
      'title': 'Blue',
      'subtitle': 'A pair',
      'price': 210.00,
      'image': 'Images/png2.jpg',
      'color': Colors.blue,
    },
    {
      'title': 'Grey',
      'subtitle': 'A pair',
      'price': 230.00,
      'image': 'Images/png2.jpg',
      'color': Colors.grey,
    },
    {
      'title': 'Yellow',
      'subtitle': 'A pair',
      'price': 240.00,
      'image': 'Images/png2.jpg',
      'color': Colors.yellow,
    },
    {
      'title': 'Pink',
      'subtitle': 'A pair',
      'price': 226.00,
      'image': 'Images/png2.jpg',
      'color': Colors.pink,
    },
    {
      'title': 'Orange',
      'subtitle': 'A pair',
      'price': 248.00,
      'image': 'Images/png2.jpg',
      'color': Colors.orange,
    },
    {
      'title': 'Purple',
      'subtitle': 'A pair',
      'price': 278.00,
      'image': 'Images/png2.jpg',
      'color': Colors.purple,
    },
    {
      'title': 'Red',
      'subtitle': 'A pair',
      'price': 290.00,
      'image': 'Images/png2.jpg',
      'color': Colors.red,
    },
    {
      'title': 'Teal',
      'subtitle': 'A pair',
      'price': 219.00,
      'image': 'Images/png2.jpg',
      'color': Colors.teal,
    },
    {
      'title': 'Orange',
      'subtitle': 'A pair',
      'price': 268.00,
      'image': 'Images/png2.jpg',
      'color': Colors.orange,
    },
    {
      'title': 'Purple',
      'subtitle': 'A pair',
      'price': 256.00,
      'image': 'Images/png2.jpg',
      'color': Colors.purple,
    },
    {
      'title': 'Red',
      'subtitle': 'A pair',
      'price': 298.00,
      'image': 'Images/png2.jpg',
      'color': Colors.red,
    },
    {
      'title': 'Teal',
      'subtitle': 'A pair',
      'price': 274.00,
      'image': 'Images/png2.jpg',
      'color': Colors.teal,
    },
    {
      'title': 'Blue',
      'subtitle': 'A pair',
      'price': 218.00,
      'image': 'Images/png2.jpg',
      'color': Colors.blue,
    },
    {
      'title': 'Grey',
      'subtitle': 'A pair',
      'price': 281.00,
      'image': 'Images/png2.jpg',
      'color': Colors.grey,
    },
    {
      'title': 'Yellow',
      'subtitle': 'A pair',
      'price': 293.00,
      'image': 'Images/png2.jpg',
      'color': Colors.yellow,
    },
    {
      'title': 'Pink',
      'subtitle': 'A pair',
      'price': 215.00,
      'image': 'Images/png2.jpg',
      'color': Colors.pink,
    },
    {
      'title': 'Orange',
      'subtitle': 'A pair',
      'price': 282.00,
      'image': 'Images/png2.jpg',
      'color': Colors.orange,
    },
    {
      'title': 'Purple',
      'subtitle': 'A pair',
      'price': 209.00,
      'image': 'Images/png2.jpg',
      'color': Colors.purple,
    },
    {
      'title': 'Red',
      'subtitle': 'A pair',
      'price': 201.00,
      'image': 'Images/png2.jpg',
      'color': Colors.red,
    },
    {
      'title': 'Teal',
      'subtitle': 'A pair',
      'price': 234.00,
      'image': 'Images/png2.jpg',
      'color': Colors.teal,
    },
  ];

  List<Map<String, dynamic>> _filteredShoes = [];
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _filteredShoes = shoes; // Initially show all shoes
  }

  void _filterShoes(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredShoes = shoes;
      } else {
        _filteredShoes = shoes
            .where((shoe) =>
                shoe['title'].toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller
    super.dispose();
  }

  void _validateAndNavigate() {
    final cardNumber = _controller.text;

    if (cardNumber.isEmpty) {
      // Show snackbar if the card number is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a card number')),
      );
    } else {
      // Navigate to another page with the card number
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AnotherPage(cardNumber: cardNumber),
        ),
      );
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      _buildFavoritesPage(),
      _buildHomePage(context),
      _buildCartPage(),
      _buildProfilePage(),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Handle back button press
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 35,
              ),
              onPressed: () {
                // Handle menu button press
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: _pages[_selectedIndex], // Display the selected page
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor:
            Colors.white, // The background color behind the curved part
        color: Colors.grey, // Color of the bar itself
        buttonBackgroundColor: Colors.blue, // Background of the selected button
        height: 60,
        index: _selectedIndex, // Initially selected tab
        items: <Widget>[
          Icon(Icons.favorite, size: 30, color: Colors.white),
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.shopping_cart, size: 30, color: Colors.white),
          Icon(Icons.more_horiz, size: 30, color: Colors.white),
        ],
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildHomePage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 10, bottom: 0),
                child: Text(
                  "Nike shoe store",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, right: 10, left: 10),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: _filterShoes,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _filteredShoes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  final shoe = _filteredShoes[index];
                  final color =
                      shoe['color'] as Color; // Use the color from the map

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShoeDetailPage(
                            index: index,
                            shoes: shoes,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  shoe['title'],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  shoe['subtitle'],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 100,
                            child: Text(
                              "\$${shoe['price'].toStringAsFixed(2)}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 20,
                            right: 20,
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Positioned(
                            bottom: 60, // Image slightly below container
                            left: 80, // Image overflows outside the container
                            child: Container(
                              height: 150,
                              width: 150,
                              child: Image.asset(
                                shoe['image'],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFavoritesPage() {
    return Center(child: Text("1 sahifa"));
  }

  Widget _buildCartPage() {
    return Center(child: Text("2 sahifa"));
  }

  Widget _buildProfilePage() {
    return Center(child: Text("3 sahifa"));
  }
}

class ShoeDetailPage extends StatelessWidget {
  final int index;
  final List<Map<String, dynamic>> shoes;

  const ShoeDetailPage({
    Key? key,
    required this.index,
    required this.shoes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoe = shoes[index];

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(image: AssetImage(""), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: BackButton()),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: IconButton(
                          icon: Icon(
                            Icons.menu,
                            size: 35,
                          ),
                          onPressed: () {
                            // Handle menu button press
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Image.asset(
                      shoe['image'],
                      height: 280,
                      width: 280,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(30)),
                child: Container(
                  height: 450,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 50),
                        child: Text(
                          shoe['title'],
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0, right: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 50),
                              child: Text(
                                shoe['subtitle'],
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 50),
                              child: Text(
                                "\$${shoe['price'].toStringAsFixed(2)}",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 30),
                        child: Text(
                          "Product Description",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 30),
                        child: Text(
                          "It’s a long- and long-established fact that a reader will be distracted by the readable content of the page when looking at its layout.",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blue,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Exam()));
                                },
                                child: Container(
                                  height: 50,
                                  width: 150,
                                  color: Colors.blue,
                                  child: Center(
                                    child: Text(
                                      "Add to cart",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class Exam extends StatefulWidget {
  const Exam({super.key});

  @override
  _ExamState createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  final TextEditingController cardHolderNameController =
      TextEditingController();

  // Validation and SnackBar logic
  void validateAndSubmit() {
    String cardNumber = cardNumberController.text;
    String expiryDate = expiryDateController.text;
    String cvv = cvvController.text;
    String cardHolderName = cardHolderNameController.text;

    if (cardNumber.isEmpty ||
        expiryDate.isEmpty ||
        cvv.isEmpty ||
        cardHolderName.isEmpty) {
      // Show error SnackBar if any field is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill in all the fields')),
      );
    } else {
      // If all fields are filled, navigate to Mine2 page with values
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Mine2(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cvv: cvv,
            cardHolderName: cardHolderName,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white70,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 420,
              width: 430,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      "Add new card",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: TextField(
                      controller: cardNumberController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          hintText: "Card Number",
                          suffixIcon: Icon(Icons.date_range)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: TextField(
                      controller: expiryDateController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          hintText: "MM/YY",
                          suffixIcon: Icon(Icons.date_range)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: TextField(
                      controller: cvvController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          hintText: "CVV",
                          suffixIcon: Icon(Icons.date_range)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: TextField(
                      controller: cardHolderNameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          hintText: "Enter Cardholder's Full Name",
                          suffixIcon: Icon(Icons.date_range)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: validateAndSubmit, // Trigger validation when tapped
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            color: Colors.blue,
                            child: Center(
                              child: Text(
                                "Add card",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Mine2 extends StatelessWidget {
  final String cardNumber;
  final String expiryDate;
  final String cvv;
  final String cardHolderName;

  const Mine2({
    Key? key,
    required this.cardNumber,
    required this.expiryDate,
    required this.cvv,
    required this.cardHolderName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Details"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 400,
              width: double.infinity,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "UZCARD",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Card Number:",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " $cardNumber",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$cardHolderName ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "CVV",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$cvv ",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "$expiryDate",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Text(
                        "Aloqa bank",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AnotherPage extends StatelessWidget {
  final String cardNumber;

  AnotherPage({required this.cardNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Number Details'),
      ),
      body: Center(
        child: Text('Card Number: $cardNumber'),
      ),
    );
  }
}
