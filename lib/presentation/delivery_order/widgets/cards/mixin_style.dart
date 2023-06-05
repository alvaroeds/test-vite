import 'package:flutter/material.dart';

mixin CardStyle {
  EdgeInsetsGeometry get cardPadding => const EdgeInsets.all(20);
  BoxDecoration get cardStyle => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 23,
            offset: Offset(0, 4),
          )
        ],
      );
}
