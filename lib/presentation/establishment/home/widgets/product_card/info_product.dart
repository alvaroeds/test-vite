import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/product_card/discount_product_tag.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/product_card/popular_tag.dart';

import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class InfoProduct extends StatelessWidget {
  const InfoProduct({
    required this.product,
    required this.amount,
    super.key,
  });
  final int amount;
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
            if (amount > 0) ...[
              Container(
                decoration: BoxDecoration(
                    color: context.primaryColor,
                    borderRadius: BorderRadius.circular(7)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 11, vertical: 1),
                alignment: Alignment.topCenter,
                child: Text(amount.toString(),
                    style: GoogleFonts.manrope(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              const SizedBox(width: 4),
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
