import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

const _maxTitleSize = 32.0;
const _minTitleSize = 24.0;
const _maxSubTitleSize = 16.0;
const _minSubTitleSize = 12.0;

class NameCompanyInfo extends StatelessWidget {
  const NameCompanyInfo({
    required this.name,
    required this.description,
    required this.percent,
    super.key,
  });

  final String name;
  final String description;
  final double percent;

  @override
  Widget build(BuildContext context) {
    final titleSize = lerpDouble(_maxTitleSize, _minTitleSize, percent);
    final subtitleSize =
        lerpDouble(_maxSubTitleSize, _minSubTitleSize, percent);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          name,
          style: context.defaultTitle?.getStyle(
            size: titleSize,
            color: Colors.white,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          description,
          style: context.defaultSubtitle?.getStyle(
            size: subtitleSize,
            color: Colors.white,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
