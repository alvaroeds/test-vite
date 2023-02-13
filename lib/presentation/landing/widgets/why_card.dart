import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:pedido_listo_web/const/landing_resources.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class WhyCard extends StatelessWidget {
  const WhyCard({
    required this.url,
    super.key,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    final breakPoint = context.screenWidth > 855;
    return Container(
      clipBehavior: Clip.antiAlias,
      height: breakPoint ? 336 : null,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xffE0FFF3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 10, offset: Offset(2, 15))
          ]),
      child: breakPoint
          ? const Row(
              children: [
                Expanded(flex: 2, child: _Info()),
                Expanded(
                    child: _Image(imageCombo: LandingResources.whyChooseUs)),
              ],
            )
          : const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _Info(),
                _Image(imageCombo: LandingResources.whyChooseUs)
              ],
            ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({required this.imageCombo});
  final ImageCombo imageCombo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenWidth > 855 ? double.infinity : 300,
      width: double.infinity,
      child: BlurHash(
        hash: imageCombo.codeBlur,
        image: imageCombo.url,
        imageFit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          color: Colors.black,
          height: context.screenWidth > 855 ? double.infinity : 300,
          width: double.infinity,
        ),
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '¿Por qué escogernos?',
            style: context.defaultTitle?.getStyle(
              size: context.isDesktop ? 40 : 34,
              color: const Color(0xff00452A),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Pedido listo es una plataforma online que facilita el trabajo de los restaurantes al brindar la posibilidad de organizar los pedidos realizados por parte de los comensales de forma que puedan realizar pedidos desde cualquier parte, incluso desde la comodidad de su casa o la desde la mesa del restaurante.',
            style: context.defaultSubtitle?.getStyle(
              size: context.isDesktop ? 20 : 16,
              color: const Color(0xff6B7380),
            ),
          )
        ],
      ),
    );
  }
}
