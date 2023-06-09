import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/bloc/details_product_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/footer/product_footer.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/show_snack_bar.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class DetailsProductView extends StatelessWidget {
  const DetailsProductView({
    required this.product,
    required this.modifiers,
    super.key,
  });

  final ProductDto product;
  final Modifiers modifiers;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailsProductBloc(product, modifiers: modifiers),
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
                ...modifiers.chooseForAmount.map((choose) =>
                    ChooseForAmountSection(chooseForAmount: choose)),
                ...modifiers.oneSelection
                    .map((one) => OneSelectionSection(oneSelection: one)),
                ...modifiers.multipleSelection.map((multiple) =>
                    MultipleSelectionSection(multipleSelection: multiple)),
                const CommentSection(),
              ],
            ))
          ],
        ),
        bottomNavigationBar: ProductFooter(
          addToCard: _addToCard,
          productPrice: product.priceWithDiscount,
        ),
      ),
    );
  }

  void _addToCard(BuildContext context) {
    final state = context.read<DetailsProductBloc>().state;

    if (state.isCommentNotValid) {
      return showSnackBar(
          'El comentario no puede tener más de ${DetailsProductState.maxCommentLength} carácteres',
          context,
          icon: Icons.chat);
    }

    if (!state.isAllModifiersFormValid) {
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
              choosesForAmount: modifiers.chooseForAmount,
              oneSelections: modifiers.oneSelection,
              multipleSelections: modifiers.multipleSelection,
            ));
        context.replaceNamed(RouterCart.name, pathParameters: {
          RouterEstablishment.firtsPath: establishment.idUrl
        });
      },
    );

    showSnackBar('Se añadió con éxito al carrito', context,
        icon: Icons.fastfood, color: context.primaryColor);
  }
}
