import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class AddCartButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double totalPrice;
  final bool isEnable;

  const AddCartButton({
    required this.totalPrice,
    required this.isEnable,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 61,
      child: FloatingActionButton.extended(
        backgroundColor:
            isEnable ? context.primaryColor : const Color(0xFFC3C7CD),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: onPressed,
        label: Text(
          'Agregar ${totalPrice.formattedPrice}',
          style: context.currentStyle.displayMedium?.getStyle(
            color: isEnable ? Colors.white : const Color(0xFF878F9B),
            size: 14,
            weight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
