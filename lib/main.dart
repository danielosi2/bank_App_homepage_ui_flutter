import 'package:flutter/material.dart';
import 'package:payment_app/profit.dart';
import 'package:payment_app/transactions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Payment',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment_sharp),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "",
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(23, 18, 0, 0),
              child: Text(
                "Hi,",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(23, 10, 0, 0),
              child: Text(
                "Net Profit",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 28),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Row(
                children: const [
                  Profit(
                    "\$20,000.00",
                    "\$150k",
                    "images/icons8-cash-30.png",
                    Colors.black,
                  ),
                  SizedBox(width: 10),
                  Profit(
                    "+\$3,000.00",
                    "\$50k",
                    "images/icons8-nike-50.png",
                    Colors.blueAccent,
                  ),
                  SizedBox(width: 10),
                  Profit(
                    "\$20,000.00",
                    "\$150k",
                    "images/icons8-cash-30.png",
                    Colors.black,
                  ),
                  SizedBox(width: 10),
                  Profit(
                    "+\$3,000.00",
                    "\$50k",
                    "images/icons8-nike-50.png",
                    Colors.blueAccent,
                  ),
                  SizedBox(width: 10),
                  Profit(
                    "\$20,000.00",
                    "\$150k",
                    "images/icons8-cash-30.png",
                    Colors.black,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 0, 25, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Transactions",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_outlined),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Transactions(
                  Icons.shopping_bag_sharp,
                  "Walmart",
                  "4:35 PM",
                  "+",
                  "50.70",
                  "jan 1 2023",
                ),
                Transactions(
                  Icons.sports_gymnastics_sharp,
                  "Gold Gym",
                  "2:35 AM",
                  "-",
                  "100.00",
                  "Feb 1 2023",
                ),
                Transactions(
                  Icons.coffee_sharp,
                  "Starbucks",
                  "3:00 PM",
                  "-",
                  "20.99",
                  "Dec 3 2022",
                ),
                Transactions(
                  Icons.restaurant_sharp,
                  "McDonald's",
                  "4:35 PM",
                  "-",
                  "30.00",
                  "jan 1 2023",
                ),
                Transactions(
                  Icons.shopping_bag_sharp,
                  "Walmart",
                  "4:35 PM",
                  "+",
                  "50.70",
                  "jan 1 2023",
                ),
                Transactions(
                  Icons.shopping_bag_sharp,
                  "Walmart",
                  "4:35 PM",
                  "+",
                  "50.70",
                  "jan 1 2023",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
