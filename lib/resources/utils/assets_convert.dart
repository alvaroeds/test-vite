import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension AssetsConvert on String {
  Widget toSvg({
    Color? color,
    double? height,
    double? width,
  }) =>
      SvgPicture.asset(
        this,
        height: height,
        width: width,
        colorFilter:
            color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
      );

  Widget toPng() => Image.asset(this);
}
