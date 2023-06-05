import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/widgets/footer_cart.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/widgets/header_cart.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class ScaffoldCart extends StatelessWidget {
  final Widget child;
  const ScaffoldCart({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [ButtonClear()],
        title: const TitteCart(),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: context.primaryColor,
            )),
      ),
      bottomNavigationBar: const FooterCart(),
    );
  }
}
