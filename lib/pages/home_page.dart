import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilities/coffee_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeeType = [
    ['Cappuccino', true],
    ['Latte', false],
    ['Black', false],
    ['Tea', false],
  ];

  final List coffeeItems = [
    {
      "imagePath": "assets/images/image1.jpg",
      "title": "Latte",
      "subtitle": "With Almond Milk",
      "price": "\$4.00"
    },
    {
      "imagePath": "assets/images/image2.png",
      "title": "Cappuccino",
      "subtitle": "Rich and Creamy",
      "price": "\$5.00"
    },
    {
      "imagePath": "assets/images/image3.jpg",
      "title": "Black Coffee",
      "subtitle": "Strong and Bold",
      "price": "\$3.50"
    },
  ];

  void onTap(int index) {
    for (int i = 0; i < coffeeType.length; i++) {
      coffeeType[i][1] = false;
    }
    setState(() {
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Find the best coffee for you',
              style: GoogleFonts.bebasNeue(
                fontSize: 60,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.orange,
                ),
                hintText: 'Find your coffee...',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {
                  var coffee = coffeeType[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ChoiceChip(
                      label: Text(coffee[0]),
                      selected: coffee[1],
                      onSelected: (_) {
                        onTap(index);
                      },
                      selectedColor: Colors.orange,
                      backgroundColor: Colors.grey[700],
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 3,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 25.0),
              scrollDirection: Axis.horizontal,
              itemCount: coffeeItems.length,
              itemBuilder: (context, index) {
                var coffee = coffeeItems[index];
                return CoffeeTile(
                  imagePath: coffee["imagePath"],
                  title: coffee["title"],
                  subtitle: coffee["subtitle"],
                  price: coffee["price"],
                );
              },
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
