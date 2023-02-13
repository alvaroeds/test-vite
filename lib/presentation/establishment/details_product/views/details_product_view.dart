import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/bloc/details_product_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';

class DetailsProductView extends StatelessWidget {
  const DetailsProductView({
    required this.product,
    required this.choosesForAmount,
    required this.oneSelections,
    required this.multipleSelections,
    super.key,
  });

  final ProductDto product;
  final List<ChooseForAmount> choosesForAmount;
  final List<OneSelection> oneSelections;
  final List<MultipleSelection> multipleSelections;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailsProductBloc(product),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            if (product.images.isNotEmpty || product.images.first.isNotEmpty)
              HeaderDetailProduct(
                image: product.images.first,
                uuid: product.uuid,
              ),
            const RoundedHeaderCard(),
            SliverToBoxAdapter(
              child: DetailProductInfo(product: product),
            ),
            SliverList(
                delegate: SliverChildListDelegate(
              [
                ...choosesForAmount.map((choose) =>
                    ChooseForAmountSection(chooseForAmount: choose)),
                ...oneSelections
                    .map((one) => OneSelectionSection(oneSelection: one)),
                ...multipleSelections.map((multiple) =>
                    MultipleSelectionSection(multipleSelection: multiple)),
                const CommentSection(),
                BlocBuilder<DetailsProductBloc, DetailsProductState>(
                  builder: (context, state) {
                    return ButtonsSection(
                      totalPrice: (state.getExtrasTotalPrice(choosesForAmount,
                                  oneSelections, multipleSelections) +
                              product.priceWithDiscount) *
                          state.productQuantity,
                      onPressed: (context) {
                        //   print(product.hashCode);

                        final bloc = context.read<DetailsProductBloc>();

                        if (bloc.state.productQuantity == 0) return;
                      },
                    );
                  },
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
