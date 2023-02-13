import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';

class MultipleSelectionCard extends StatelessWidget {
  const MultipleSelectionCard({
    required this.optionFood,
    required this.onTap,
    this.isSelected = true,
    this.isDisabled = false,
    super.key,
  });

  final OptionFood optionFood;
  final bool isSelected;
  final bool isDisabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CustomOption(
      name: optionFood.name,
      price: optionFood.price,
      onTap: isDisabled && !isSelected ? null : onTap,
      isSelected: isSelected,
      isDisabled: isDisabled && !isSelected,
      selectedIcon: FontAwesomeIcons.squareCheck,
      disabledIcon: FontAwesomeIcons.square,
    );
  }
}
