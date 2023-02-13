import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/widgets/widgets.dart';
import 'package:pedido_listo_web/resources/utils/declarative_bool.dart';

const _borderRadius = 25.0;
const _imageSize = 104.0;

class ImageProduct extends StatelessWidget {
  const ImageProduct({
    required this.images,
    super.key,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        height: _imageSize,
        width: _imageSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_borderRadius),
          color: const Color.fromARGB(255, 193, 191, 191),
        ),
        child: (images.isNotEmpty || images.first.isNotEmpty).whenOrNull(
            isTrue: () => FittedBox(
                  child: WrapNetworkImage(
                    image: images.first,
                    height: _imageSize,
                    width: _imageSize,
                    fit: BoxFit.cover,
                  ),
                )));
  }
}
