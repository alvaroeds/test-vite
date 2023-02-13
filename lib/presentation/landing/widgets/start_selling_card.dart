import 'package:flutter/material.dart';
import 'package:pedido_listo_web/const/landing_resources.dart';
import 'package:pedido_listo_web/presentation/widgets/widgets.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class StartSellingCard extends StatelessWidget {
  const StartSellingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(children: [
      Center(child: _Image(imageUrl: LandingResources.startSelling.url)),
      const _Info(),
    ]);
  }
}

class _Image extends StatelessWidget {
  const _Image({required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
              color: Colors.black26, blurRadius: 10, offset: Offset(2, 15))
        ],
      ),
      constraints: const BoxConstraints(maxHeight: 350, maxWidth: 470),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: WrapNetworkImage(
          image: imageUrl,
          height: 551,
          width: 744,
          fit: BoxFit.cover,
          // loading: Container(
          //   color: Colors.black,
          //   height: 551,
          //   width: 744,
          // ),
        ),
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      constraints: const BoxConstraints(maxWidth: 500),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cargue sus productos y empiece a vender',
            style: context.defaultTitle?.getStyle(
              size: context.getDouble(34, 34, 40),
              color: const Color(0xff00452A),
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: TextSpan(
                text:
                    'Deje de perder tiempo procesando pedidos por whatsapp,  cree su tienda en línea con Pedido Listo y gestione sus pedidos online de una forma fácil y rápida a travez de su propia tienda virtual.',
                style: context.defaultSubtitle?.getStyle(
                  size: context.isDesktop ? 20 : 16,
                  color: const Color(0xff6B7380),
                ),
                children: [
                  TextSpan(
                    text:
                        '\n\nConfigure su tienda online y comparta su enlace con sus clientes para que hagan sus pedidos.',
                    style: context.defaultSubtitle?.getStyle(
                      size: context.isDesktop ? 20 : 16,
                      color: const Color(0xff6B7380),
                      weight: FontWeight.bold,
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
