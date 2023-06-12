import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/widgets/app_bar_wrapper.dart';
import 'package:pedido_listo_web/resources/utils/fonts.dart';

class TitteSummary extends StatelessWidget {
  const TitteSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Resumen de tu pedido',
          style: context.interBold1Title?.copyWith(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

class AppBarSummary extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onPressed;
  const AppBarSummary({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBarWrapper(
      title: const TitteSummary(),
      onPressedBack: onPressed,
      action: const SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}
