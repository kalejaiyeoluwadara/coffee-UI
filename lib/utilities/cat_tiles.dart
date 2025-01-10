import 'package:flutter/material.dart';

class CatTiles extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  const CatTiles(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
