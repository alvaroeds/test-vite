import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class AddCartButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double totalPrice;

  const AddCartButton({
    required this.totalPrice,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 61,
      child: FloatingActionButton.extended(
        backgroundColor: context.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: onPressed,
        label: Text(
          'Agregar ${totalPrice.formattedPrice}',
          style: context.currentStyle.displayMedium?.getStyle(
            color: Colors.white,
            size: 14,
            weight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
