import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/header_delivery.dart';

class ScaffoldDelivery extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  const ScaffoldDelivery({required this.child, super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onPressed?.call();
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: child,
          backgroundColor: Colors.white,
          appBar: AppBarDelivery(onPressed: onPressed),
          //  bottomNavigationBar: const FooterCart(),
        ),
      ),
    );
  }
}
