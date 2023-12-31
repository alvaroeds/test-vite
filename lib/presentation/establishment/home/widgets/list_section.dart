import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
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
            padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
            child: Text(category.name,
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: const Color(0xff565C66),
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            color: Colors.white,
            child: Wrap(
              children: [
                ...category.products.map(
                  (product) => BlocSelector<AppCacheBloc, AppCacheState, int>(
                    selector: (state) => state.getAmountProduct(product, idUrl),
                    builder: (context, amount) {
                      return ProductCard(
                        key: Key(product.uuid),
                        amount: amount,
                        onTap: () => onTapProduct(product.uuid),
                        product: product,
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
