import 'package:flutter/material.dart';

class EmptyCartView extends StatelessWidget {
  const EmptyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFFC3C7CD);
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 150,
              color: color,
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Aún no tienes productos\nen tu canasta',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }
}
