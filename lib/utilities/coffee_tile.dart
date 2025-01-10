import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(12)),
        child: Image.asset('assets/images/image1.jpg'),
      ),
    ));
  }
}
