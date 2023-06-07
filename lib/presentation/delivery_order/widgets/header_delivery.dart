import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/widgets/app_bar_wrapper.dart';
import 'package:pedido_listo_web/resources/utils/fonts.dart';

class TitteDelivery extends StatelessWidget {
  const TitteDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Datos de entrega',
          style: context.interBold1Title?.copyWith(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

class AppBarDelivery extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onPressed;
  const AppBarDelivery({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBarWrapper(
      title: const TitteDelivery(),
      onPressedBack: onPressed,
      action: const SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}
