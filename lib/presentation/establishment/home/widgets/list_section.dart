import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/product_card/product_card.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class ListSection extends StatelessWidget {
  const ListSection({
    required this.category,
    required this.onTapProduct,
    required this.idUrl,
    super.key,
  });

  final CategoriesDto category;
  final String idUrl;
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
                  style: context.defaultTitle?.getStyle(
                      size: 20,
                      color: const Color(0xff565C66),
                      weight: FontWeight.bold)),
            ),
            Wrap(
              children: [
                ...category.products.map(
                  (product) => BlocSelector<AppCacheBloc, AppCacheState, int>(
                    selector: (state) => state.getAmountProduct(product, idUrl),
                    builder: (context, amount) {
                      return ProductCard(
                        amount: amount,
                        onTap: () => onTapProduct(product.uuid),
                        product: product,
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ));
  }
}
