import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/widgets.dart';

const _primaryColor = Color(0xffFF7A00);
const _secondaryColor = Color(0xffFFF6ED);

class DiscountTagDetail extends StatelessWidget {
  const DiscountTagDetail({
    required this.discount,
    super.key,
  });

  final String discount;
  @override
  Widget build(BuildContext context) {
    return CustomTag(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        primaryColor: _primaryColor,
        secondaryColor: _secondaryColor,
        child: Text('- $discount%',
            style: GoogleFonts.redHatDisplay(
              color: _primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w900,
            )));
  }
}
