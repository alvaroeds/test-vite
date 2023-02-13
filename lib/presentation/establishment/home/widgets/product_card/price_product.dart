import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class PriceProduct extends StatelessWidget {
  const PriceProduct({
    required this.product,
    super.key,
  });

  final ProductDto product;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            (product.priceWithDiscount).formattedPrice,
            style: GoogleFonts.manrope(
              fontSize: 14,
              color: context.currentTheme.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (product.discount > 0) ...[
            const SizedBox(width: 10),
            Text(
              product.price.formattedPrice,
              style: GoogleFonts.manrope(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.lineThrough,
                  color: const Color(0xff878F9B)),
            ),
          ]
        ],
      ),
    );
  }
}
