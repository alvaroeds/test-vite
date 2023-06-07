import 'package:flutter/material.dart';

mixin CardStyle {
  EdgeInsetsGeometry get cardPadding => const EdgeInsets.all(20);
  BoxDecoration get cardStyle => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF8F8F8F).withOpacity(0.15),
            blurRadius: 17,
            offset: const Offset(0, 4),
          )
        ],
      );
}
