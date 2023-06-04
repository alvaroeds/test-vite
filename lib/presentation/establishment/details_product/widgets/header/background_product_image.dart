import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/widgets/widgets.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class BackgroundProductImage extends StatelessWidget {
  const BackgroundProductImage({
    required this.image,
    required this.percent,
    super.key,
  });

  final String image;
  final double percent;

  @override
  Widget build(BuildContext context) {
    final color = Color.lerp(
        Colors.black.withOpacity(.2), Colors.black.withOpacity(.4), percent);
    return Stack(
      children: [
        const Positioned.fill(child: ColoredBox(color: Colors.black)),
        Positioned.fill(
          child: WrapNetworkImage(
            image: image,
            width: double.infinity,
            fit: context.isMobile ? BoxFit.cover : BoxFit.fitHeight,
          ),
        ),
        Positioned.fill(child: DecoratedBox(decoration: _decoration(color))),
      ],
    );
  }

  BoxDecoration _decoration(Color? color) => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            color ?? Colors.black.withOpacity(.5),
            const Color.fromRGBO(0, 0, 0, 0.6),
          ],
        ),
      );
}
