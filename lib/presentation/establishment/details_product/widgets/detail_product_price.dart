import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class DetailProductPrice extends StatelessWidget {
  const DetailProductPrice({
    required this.product,
    super.key,
  });

  final ProductDto product;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            (product.priceWithDiscount).formattedPrice,
            style: GoogleFonts.inter(
              fontSize: 18,
              color: const Color(0xff40454D),
              fontWeight: FontWeight.w600,
            ),
          ),
          if (product.discount > 0) ...[
            const SizedBox(width: 12),
            Text(
              product.price.formattedPrice,
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.lineThrough,
                  color: const Color(0xffAEAEAE)),
            ),
          ]
        ],
      ),
    );
  }
}
