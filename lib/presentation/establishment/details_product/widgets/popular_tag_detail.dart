import 'package:flutter/material.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/widgets.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

const _primaryColor = Color(0xff00AC69);
const _secondaryColor = Color(0xffAFFFE0);

class PopularTagDetail extends StatelessWidget {
  const PopularTagDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTag(
      primaryColor: _primaryColor,
      secondaryColor: _secondaryColor,
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
      child: R.ASSETS_SVG_FAVORITE_SVG.toSvg(
        width: 13,
        height: 13,
      ),
    );
  }
}
