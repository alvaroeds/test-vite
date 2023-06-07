import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/widgets/footer_cart.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/widgets/header_cart.dart';
import 'package:pedido_listo_web/presentation/widgets/app_bar_wrapper.dart';

class ScaffoldCart extends StatelessWidget {
  final Widget child;
  const ScaffoldCart({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: child,
        backgroundColor: Colors.white,
        appBar: AppBarCart(
          onPressedBack: () => Navigator.pop(context),
        ),
        bottomNavigationBar: const FooterCart(),
      ),
    );
  }
}

class AppBarCart extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onPressedBack;
  const AppBarCart({super.key, this.onPressedBack});

  @override
  Widget build(BuildContext context) {
    return AppBarWrapper(
      title: const TitteCart(),
      action: const ButtonClear(),
      onPressedBack: onPressedBack,
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}
