import 'package:flutter/material.dart';
import 'package:pedido_listo_web/const/landing_resources.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/benefit_card.dart';

import 'package:pedido_listo_web/presentation/widgets/responsive_layout.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class BenefitsLandingview extends StatelessWidget {
  const BenefitsLandingview({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(47),
        child: Column(children: [
          const SizedBox(height: 65),
          Text(
            'Beneficios de usar Pedido Listo',
            textAlign: TextAlign.center,
            style: context.titleBenefitsFont,
          ),
          const SizedBox(height: 48),
          const ResponsiveLayout(children: [
            BenefitCard(
                imageCombo: LandingResources.benefit1,
                title: 'Simplifique su negocio',
                description:
                    'Es fácil de configurar y administrar, y viene con una serie de características para hacer su vida más fácil.'),
            SizedBox(height: 31, width: 31),
            BenefitCard(
                imageCombo: LandingResources.benefit2,
                title: 'Agilice su proceso de  venta',
                description:
                    'Es fácil de configurar y administrar, y viene con una serie de características para hacer su vida más fácil.'),
            SizedBox(height: 31, width: 31),
            BenefitCard(
                imageCombo: LandingResources.benefit3,
                title: 'Diga adios al papeleo',
                description:
                    'Es fácil de configurar y administrar, y viene con una serie de características para hacer su vida más fácil.'),
          ])
        ]),
      ),
    );
  }
}
