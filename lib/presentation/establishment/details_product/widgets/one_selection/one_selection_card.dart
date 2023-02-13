import 'package:flutter/material.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';

class OneSelectionCard extends StatelessWidget {
  const OneSelectionCard({
    required this.optionFood,
    required this.onTap,
    this.isSelected = true,
    super.key,
  });

  final OptionFood optionFood;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CustomOption(
      name: optionFood.name,
      price: optionFood.price,
      onTap: onTap,
      isSelected: isSelected,
    );
  }
}
