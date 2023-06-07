import 'package:flutter/material.dart';

mixin CardStyle {
  EdgeInsetsGeometry get cardPadding => const EdgeInsets.all(20);
  EdgeInsetsGeometry get cardMargin => const EdgeInsets.symmetric(vertical: 10);

  BoxDecoration get cardStyle => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 11, 11, 11).withOpacity(0.15),
            blurRadius: 17,
            offset: const Offset(0, 4),
          )
        ],
      );
}
