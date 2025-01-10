import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(12)),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset('assets/images/image1.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Latte',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'With Almond Milk',
                  style: TextStyle(color: Colors.grey[700]),
                )
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
