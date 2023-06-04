import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/product_card/custom_tag.dart';

const _primaryColor = Color(0xffFF7A00);
const _secondaryColor = Color(0xffFFF6ED);

class DiscountCartTag extends StatelessWidget {
  const DiscountCartTag({
    required this.discount,
    super.key,
  });

  final String discount;

  @override
  Widget build(BuildContext context) {
    return CustomTag(
        primaryColor: _primaryColor,
        secondaryColor: _secondaryColor,
        widthBorder: 1,
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
        child: Text(' -$discount% ',
            style: GoogleFonts.redHatDisplay(
              color: _primaryColor,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            )));
  }
}
