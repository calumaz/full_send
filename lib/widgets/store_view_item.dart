import 'package:flutter/material.dart';

class StoreViewItem extends StatelessWidget {
  const StoreViewItem({super.key, required this.imageName, required this.itemName, required this.itemPrice});

  final String imageName;
  final String itemName;
  final double itemPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageName),
        Text(itemName, style: const TextStyle(fontFamily: 'Karla', fontSize: 18),),
        Text('\$$itemPrice CAD', style: const TextStyle(fontFamily: 'Karla', fontSize: 18, color: Colors.green),)
      ],
    );
  }
}
