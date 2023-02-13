import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/product_card/custom_tag.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

const _primaryColor = Color(0xffFF7A00);
const _secondaryColor = Color(0xffFFF6ED);

class DiscountProductTag extends StatelessWidget {
  const DiscountProductTag({
    required this.discount,
    super.key,
  });

  final String discount;

  @override
  Widget build(BuildContext context) {
    final text = context.screenWidth > 346 ? ' Descuento' : '';
    return CustomTag(
        primaryColor: _primaryColor,
        secondaryColor: _secondaryColor,
        child: Text('- $discount% $text',
            style: GoogleFonts.redHatDisplay(
              color: _primaryColor,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            )));
  }
}
