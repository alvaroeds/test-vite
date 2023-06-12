import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/bloc/shopping_car_bloc.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/views/empty_cart_view.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/views/some_cart_view.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/widgets/scaffold_cart.dart';

class ShoppingCartBlocPage extends StatelessWidget {
  final String? urlId;

  const ShoppingCartBlocPage({required this.urlId, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCacheBloc, AppCacheState>(
      builder: (context, state) {
        final cartCache = state.cartCache[urlId];

        if (cartCache == null) {
          return const Scaffold(
              body: Center(child: CircularProgressIndicator()));
        }

        return BlocProvider(
          key: Key(cartCache.urlId),
          create: (context) => ShoppingCartBloc(cartCache),
          child: ScaffoldCart(
            child: BlocConsumer<ShoppingCartBloc, ShoppingCartState>(
              listener: (context, state) {
                context
                    .read<AppCacheBloc>()
                    .add(AppCacheEvent.updateCart(state.shoppingCart));
              },
              builder: (context, state) {
                if (state.shoppingCart.items.isEmpty) {
                  return const EmptyCartView();
                }
                return SomeCartView(state.shoppingCart);
              },
            ),
          ),
        );
      },
    );
  }
}
