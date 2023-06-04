import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/bloc/shopping_car_bloc.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/views/empty_cart_view.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/widgets/item_cart_view/item_cart_view.dart';

class SomeCartView extends StatelessWidget {
  final ShoppingCartDto shoppingCart;

  const SomeCartView(this.shoppingCart, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
      /* listener: (context, state) {
        context
            .read<AppCacheBloc>()
            .add(AppCacheEvent.updateCart(state.shoppingCart));
      }, */
      builder: (context, state) {
        if (state.shoppingCart.items.isEmpty) {
          return const EmptyCartView();
        }
        return ListView(
          physics: const ClampingScrollPhysics(),
          children: shoppingCart.items.map(
            (item) {
              return ItemCardView(
                item,
                onAdd: () {
                  context.read<ShoppingCartBloc>().add(
                        ShoppingCartEvent.addAmount(item.uuid),
                      );
                },
                onRemove: () {
                  context.read<ShoppingCartBloc>().add(
                        ShoppingCartEvent.removeAmount(item.uuid),
                      );
                },
              );
            },
          ).toList(),
        );
      },
    );
  }
}
