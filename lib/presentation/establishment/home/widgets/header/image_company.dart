import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/widgets/widgets.dart';

const _maxSize = 96.0;
const _minSize = 74.0;

class ImageCompany extends StatelessWidget {
  const ImageCompany({
    required this.image,
    required this.percent,
    super.key,
  });

  final String image;
  final double percent;

  @override
  Widget build(BuildContext context) {
    final size = lerpDouble(_maxSize, _minSize, percent);
    // final size = Tween<double>(begin: _maxSize, end: _minSize).lerp(percent);
    // final size = (_maxSize * (1 - percent)).clamp(_minSize, _maxSize);

    return Container(
      height: size,
      width: size,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: WrapNetworkImage(
          image: image,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
