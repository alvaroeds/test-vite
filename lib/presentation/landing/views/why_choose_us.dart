import 'package:flutter/material.dart';
import 'package:pedido_listo_web/const/landing_resources.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/why_card.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class WhyChooseUs extends StatelessWidget {
  const WhyChooseUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(context.isMobile ? 30 : 90),
        child: WhyCard(url: LandingResources.whyChooseUs.url),
      ),
    );
  }
}
