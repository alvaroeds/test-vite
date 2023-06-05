import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/header_delivery.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class ScaffoldDelivery extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  const ScaffoldDelivery({required this.child, super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,

      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [SizedBox(width: 30)],
        title: const TitteDelivery(),
        leading: IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: context.primaryColor,
            )),
      ),
      //  bottomNavigationBar: const FooterCart(),
    );
  }
}
