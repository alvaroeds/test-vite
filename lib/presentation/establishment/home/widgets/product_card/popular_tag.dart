import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/product_card/custom_tag.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

const _primaryColor = Color(0xff00AC69);
const _secondaryColor = Color(0xffAFFFE0);

class PopularTag extends StatelessWidget {
  const PopularTag({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTag(
        primaryColor: _primaryColor,
        secondaryColor: _secondaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            R.ASSETS_SVG_FAVORITE_SVG.toSvg(),
            const SizedBox(width: 4),
            Text(
              'Popular',
              style: GoogleFonts.redHatDisplay(
                fontSize: 12,
                color: _primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ));
  }
}
