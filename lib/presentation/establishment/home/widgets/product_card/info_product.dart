import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/product_card/discount_product_tag.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/product_card/popular_tag.dart';

import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';

class InfoProduct extends StatelessWidget {
  const InfoProduct({
    required this.product,
    super.key,
  });

  final ProductDto product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (product.discount > 0) ...[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              DiscountProductTag(
                discount: product.discountText,
              ),
              const SizedBox(width: 5),
              const PopularTag(),
            ],
          ),
          const SizedBox(height: 8),
        ],
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (true) ...[
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xff00AC69),
                    borderRadius: BorderRadius.circular(7)),
                padding: const EdgeInsets.symmetric(horizontal: 11),
                alignment: Alignment.topCenter,
                child: Text('1',
                    style: GoogleFonts.manrope(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              const SizedBox(width: 2),
            ],
            Text(product.name,
                style: GoogleFonts.manrope(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                )),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          product.description,
          style: GoogleFonts.manrope(
            color: const Color(0xff878F9B),
            fontWeight: FontWeight.w500,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),

        /// separation needed for price line
        const SizedBox(height: 35),
      ],
    );
  }
}
