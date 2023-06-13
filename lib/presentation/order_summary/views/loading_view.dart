import 'package:flutter/material.dart';

import 'package:pedido_listo_web/presentation/order_summary/widgets/cards/mixin_style.dart';

class SummaryLoadingView extends StatelessWidget with CardStyle {
  const SummaryLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 800,
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: cardPadding,
              margin: cardMargin,
              decoration: cardStyle,
              height: 171,
            ),
            Container(
              padding: cardPadding,
              margin: cardMargin,
              decoration: cardStyle,
              height: 119,
            ),
            Container(
              padding: cardPadding,
              margin: cardMargin,
              decoration: cardStyle,
              height: 77,
            ),
          ],
        ),
      ),
    );
  }
}
