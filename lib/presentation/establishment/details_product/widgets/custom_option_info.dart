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
        SelectableText(
          name,
          style: context.getModifierContent(isDisabled: isDisabled)?.getStyle(
                weight: FontWeight.bold,
              ),
        ),
        Text(
          '+${price.formattedPrice}',
          style: context.getModifierContent(isDisabled: isDisabled),
        ),
      ],
    );
  }
}
