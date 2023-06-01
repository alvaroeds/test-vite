import 'package:flutter/material.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/product_card/product_card.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class ListSection extends StatelessWidget {
  const ListSection({
    required this.category,
    required this.onTapProduct,
    super.key,
  });

  final CategoriesDto category;
  final void Function(String uuid) onTapProduct;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
        color: context.currentTheme.scaffoldBackgroundColor,
        // padding: const EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 0, 10),
              child: Text(category.name,
                  style: context.headline4?.getStyle(
                    size: 20,
                  )),
            ),
            Wrap(
              children: List.generate(
                  category.products.length,
                  (i) => ProductCard(
                        onTap: () => onTapProduct(category.products[i].uuid),
                        product: category.products[i],
                      )),
            )
          ],
        ));
  }
}
