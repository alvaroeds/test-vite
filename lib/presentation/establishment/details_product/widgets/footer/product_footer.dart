import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/bloc/details_product_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/buttons_section.dart/add_cart_button.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/buttons_section.dart/duplicate_remove_button.dart';

class ProductFooter extends StatelessWidget {
  final double Function(DetailsProductState state) onBuildFinalPrice;
  final void Function(BuildContext context) addToCard;

  const ProductFooter({
    required this.onBuildFinalPrice,
    required this.addToCard,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsProductBloc, DetailsProductState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(22, 8, 22, 12),
          child: Row(
            children: [
              const DuplicateRemoveButton(),
              const SizedBox(width: 10),
              Expanded(
                  child: AddCartButton(
                totalPrice: onBuildFinalPrice(state),
                onPressed: () => addToCard(context),
              )),
            ],
          ),
        );
      },
    );
  }
}
