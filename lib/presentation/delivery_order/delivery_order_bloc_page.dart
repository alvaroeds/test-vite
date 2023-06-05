import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/views/data_view.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/scaffold_delivery.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/widgets/loading_view.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';

class DeleveryDataBlocpage extends StatelessWidget {
  final String urlId;
  const DeleveryDataBlocpage({required this.urlId, super.key});

  @override
  Widget build(BuildContext context) {
    void goShoppingCart() {
      context.goNamed(RouterCart.name,
          pathParameters: {RouterEstablishment.firtsPath: urlId});
    }

    return BlocConsumer<AppCacheBloc, AppCacheState>(
      listener: (context, cacheState) {
        final isCartEmpty = cacheState.cartCache[urlId]?.totalItem == 0;

        if (isCartEmpty) goShoppingCart();
      },
      builder: (context, cacheState) {
        final shoppingCart = cacheState.cartCache[urlId];

        if (shoppingCart == null) return const _ScaffoldLoading();

        return BlocBuilder<EstablishmentBloc, EstablishmentState>(
          builder: (context, state) {
            return state.maybeWhen(
                hasData: (establishment) {
                  return BlocProvider(
                    create: (context) => DeliveryOrderBloc(
                      establishmentDto: establishment,
                      shoppingCartDto: shoppingCart,
                      userDto: cacheState.user,
                    ),
                    child: ScaffoldDelivery(
                      onPressed: goShoppingCart,
                      child: const DataView(),
                    ),
                  );
                },
                orElse: _ScaffoldLoading.new);
          },
        );
      },
    );
  }
}

class _ScaffoldLoading extends StatelessWidget {
  const _ScaffoldLoading();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoadingView());
  }
}