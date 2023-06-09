import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/bloc/details_product_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/buttons_section.dart/add_cart_button.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/buttons_section.dart/duplicate_remove_button.dart';

class ProductFooter extends StatelessWidget {
  final void Function(BuildContext context) addToCard;
  final double productPrice;

  const ProductFooter({
    required this.addToCard,
    required this.productPrice,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsProductBloc, DetailsProductState>(
      buildWhen: (previous, current) =>
          (previous.getExtrasTotalPrice() + productPrice) *
                  previous.productQuantity !=
              (current.getExtrasTotalPrice() + productPrice) *
                  current.productQuantity ||
          previous.isAllModifiersFormValid != current.isAllModifiersFormValid ||
          previous.isCommentNotValid != current.isCommentNotValid,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(22, 8, 22, 12),
          child: Row(
            children: [
              const DuplicateRemoveButton(),
              const SizedBox(width: 10),
              Expanded(
                  child: AddCartButton(
                isEnable:
                    state.isAllModifiersFormValid && !state.isCommentNotValid,
                totalPrice: (state.getExtrasTotalPrice() + productPrice) *
                    state.productQuantity,
                onPressed: () => addToCard(context),
              )),
            ],
          ),
        );
      },
    );
  }
}
