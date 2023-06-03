import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/presentation/app/bloc/cart_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/bloc/details_product_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/show_snack_bar.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

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
                      onPressed: _addToCard,
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

  void _addToCard(BuildContext context) {
    final state = context.read<DetailsProductBloc>().state;
    final isReadyChoosesForAmount = choosesForAmount.every((element) {
      final currentAmount = state.getCurrentAmountFromModifier(element);
      return element.isValid(currentAmount);
    });

    final isReadyOneSelections = oneSelections.every(
      (element) => state.getOptionSelectedFromModifier(element.uuid).isSome(),
    );

    final isReadyMultipleSelections = multipleSelections.every((element) {
      final currentAmount = state.getCurrentAmountFromMultiple(element);
      return element.isValid(currentAmount);
    });

    if (state.comment.length > 100) {
      return showSnackBar(
          'El comentario no puede tener más de 100 caracteres', context,
          icon: Icons.chat);
    }

    if (!isReadyChoosesForAmount ||
        !isReadyOneSelections ||
        !isReadyMultipleSelections) {
      return showSnackBar(
          'Debes seleccionar las opciones obligatorias', context,
          icon: Icons.error);
    }
    context.read<EstablishmentBloc>().state.whenOrNull(
      hasData: (establishment) {
        context.read<AppCacheBloc>().add(AppCacheEvent.createItem(
              state,
              product: product,
              establishmentUuid: establishment.idUrl,
              choosesForAmount: choosesForAmount,
              oneSelections: oneSelections,
              multipleSelections: multipleSelections,
            ));
      },
    );
    Navigator.of(context).pop();
    showSnackBar('Se añadió con éxito al carrito', context,
        icon: Icons.fastfood, color: context.primaryColor);
  }
}
