import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.title,
    this.asCancel = false,
  });

  const CustomButton.asCancel({
    super.key,
    this.onTap,
    this.title,
    this.asCancel = true,
  });

  final VoidCallback? onTap;
  final String? title;
  final bool asCancel;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(10);
    return Material(
      borderRadius: borderRadius,
      elevation: 8,
      shadowColor: Colors.black54,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: Container(
          height: 62,
          width: context.screenWidth > 535 ? 178 : 100,
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: asCancel
                ? const Color(0xffFF3434)
                : context.currentTheme.primaryColor,
            borderRadius: borderRadius,
          ),
          child: Text(
            title ?? (asCancel ? 'Cancelar' : 'Aceptar'),
            style: context.headline4?.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
