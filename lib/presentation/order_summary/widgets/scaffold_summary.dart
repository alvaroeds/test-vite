import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/order_summary/widgets/header_summary.dart';

class ScaffoldSummary extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  const ScaffoldSummary({required this.child, super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: child,
        backgroundColor: Colors.white,
        appBar: AppBarSummary(onPressed: () {
          Navigator.pop(context);
        }),
        //  bottomNavigationBar: const FooterCart(),
      ),
    );
  }
}
