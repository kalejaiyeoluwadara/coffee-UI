// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilities/coffee_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                // filled: true,
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
          Expanded(
              child: ListView(
            padding: const EdgeInsets.only(left: 25.0),
            scrollDirection: Axis.horizontal,
            children: [
              const CoffeeTile(),
              const CoffeeTile(),
              const CoffeeTile(),
            ],
          ))
        ],
      ),
    );
  }
}
