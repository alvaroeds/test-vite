import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class DetailProductInfo extends StatelessWidget {
  const DetailProductInfo({
    required this.product,
    super.key,
  });

  final ProductDto product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 30),
      color: context.backgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                product.name,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  color: const Color(0xff40454D),
                ),
              )),
              const SizedBox(width: 6),
              if (product.discount > 0)
                DiscountTagDetail(discount: product.discountText),
              const SizedBox(width: 4),
              // TODOCriszx17Dev: verify whether the product is popular or not
              const PopularTagDetail(),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            product.description,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: const Color(0xff40454D),
            ),
          ),
          const SizedBox(height: 20),
          DetailProductPrice(product: product),
          const Divider(),
        ],
      ),
    );
  }
}
