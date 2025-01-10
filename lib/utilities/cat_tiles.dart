import 'package:flutter/material.dart';

class CatTiles extends StatelessWidget {
  const CatTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Text('Cappucino'),
            Text('Cappucino'),
            Text('Cappucino'),
          ],
        ));
  }
}
