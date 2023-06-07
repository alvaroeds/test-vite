import 'package:flutter/material.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/widgets.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

const _horizontalpadding = 14.0;
const _borderRadius = 25.0;

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.product,
    required this.amount,
    required this.onTap,
    super.key,
  });

  final ProductDto product;
  final int amount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cardWidth = context.screenWidth - _horizontalpadding;
    final width = context.getDouble(
      double.infinity,
      cardWidth / 2,
      cardWidth / 3,
    );

    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF6B7380).withOpacity(0.1),
              blurRadius: 24,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        width: width,
        padding: const EdgeInsets.symmetric(
            horizontal: _horizontalpadding, vertical: 5),
        child: Container(
          clipBehavior: Clip.antiAlias,
          // height: context.isMobile ? cardHeightMobile : cardHeightLarge,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(_borderRadius),
          ),
          padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: InfoProduct(product: product, amount: amount),
                  ),
                  const SizedBox(width: 12),
                  Align(child: ImageProduct(images: product.images)),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: PriceProduct(product: product),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
