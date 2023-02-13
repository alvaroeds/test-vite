import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class CustomOptionInfo extends StatelessWidget {
  const CustomOptionInfo({
    required this.name,
    required this.price,
    required this.isDisabled,
    super.key,
  });

  final String name;
  final double price;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: context.currentStyle.headlineMedium?.getStyle(
            color:
                isDisabled ? const Color(0xffA5A3A9) : const Color(0xff40454D),
            weight: FontWeight.w700,
            size: 14,
          ),
        ),
        Text(
          '+${price.formattedPrice}',
          style: context.currentStyle.bodySmall?.getStyle(
            color: isDisabled ? const Color(0xffA5A3A9) : null,
          ),
        ),
      ],
    );
  }
}
