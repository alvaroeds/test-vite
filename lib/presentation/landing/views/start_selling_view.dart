import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/create_button.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/start_selling_card.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class StarSellingLandingView extends StatelessWidget {
  const StarSellingLandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const StartSellingCard(),
            const SizedBox(height: 50),
            Text(
              'Regístrese gratis y preparate para ver crecer tus ventas.',
              textAlign: TextAlign.center,
              style: context.defaultTitle?.getStyle(
                color: const Color(0xff6B7380),
                size: context.getDouble(18, 20, 22),
              ),
            ),
            const SizedBox(height: 26),
            const CreateButton()
          ],
        ),
      ),
    );
  }
}
