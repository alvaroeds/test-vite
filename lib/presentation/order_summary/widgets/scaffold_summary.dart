import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/order_summary/widgets/footer_summary.dart';
import 'package:pedido_listo_web/presentation/order_summary/widgets/header_summary.dart';

class ScaffoldSummary extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  const ScaffoldSummary({required this.child, super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: child,
          backgroundColor: Colors.white,
          appBar: AppBarSummary(onPressed: () {
            Navigator.pop(context);
          }),
          //  bottomNavigationBar: const FooterCart(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: const FooterSummary(),
        ),
      ),
    );
  }
}
