import 'package:flutter/material.dart';

mixin CardStyle {
  EdgeInsetsGeometry get cardPadding => const EdgeInsets.all(20);
  EdgeInsetsGeometry get cardMargin => const EdgeInsets.symmetric(vertical: 10);

  BoxDecoration get cardStyle => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff6b7380).withOpacity(0.1),
            blurRadius: 24,
            offset: const Offset(0, 4),
          )
        ],
      );
}
