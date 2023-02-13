import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

const _maxTitleSize = 32.0;
const _minTitleSize = 24.0;
const _maxSubTitleSize = 16.0;
const _minSubTitleSize = 12.0;

class NameCompanyInfo extends StatelessWidget {
  const NameCompanyInfo({
    required this.establishment,
    required this.percent,
    super.key,
  });

  final EstablishmentDto establishment;
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
          establishment.name,
          style: context.defaultTitle?.getStyle(
            size: titleSize,
            color: Colors.white,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          establishment.description,
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
