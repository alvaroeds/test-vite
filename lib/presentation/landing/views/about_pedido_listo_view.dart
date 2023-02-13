import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/widgets/responsive_layout.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class AboutPedidoListoView extends StatelessWidget {
  const AboutPedidoListoView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(45),
        child: Column(children: [
          const SizedBox(height: 65),
          Text(
            '¿Que es Pedido Listo?',
            textAlign: TextAlign.center,
            style: context.titleAboutFont,
          ),
          const SizedBox(height: 48),
          const ResponsiveLayout(children: [
            _Image(),
            SizedBox(height: 30, width: 30),
            _Info(),
          ])
        ]),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 516, maxHeight: 325),
        child: Image.asset(
          'assets/platform-view.png',
          fit: BoxFit.contain,
        ));
  }
}

class _Info extends StatelessWidget {
  const _Info();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!context.isDesktop) const SizedBox(height: 30),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 518),
          child: Text(
            'Es una plataforma para restaurantes y negocios donde pueden crear una tienda virtual para mostrar sus productos de forma sencilla.',
            maxLines: 6,
            style: context.descriptionAboutFont,
          ),
        ),
        const SizedBox(height: 15),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 518),
          child: Text(
            'Cree un número ilimitado de productos, categorías, imágenes y mucho más.',
            style: context.descriptionAboutBoldFont,
          ),
        ),
      ],
    );
  }
}
