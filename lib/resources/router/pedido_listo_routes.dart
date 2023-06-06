import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/delivery_order_bloc_page.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/details_product_bloc_page.dart';
import 'package:pedido_listo_web/presentation/establishment/establishment_bloc_page.dart';
import 'package:pedido_listo_web/presentation/landing/landing_screen.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/shopping_cart_bloc_page.dart';
import 'package:pedido_listo_web/resources/router/config_router.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

import 'package:universal_html/html.dart' as html;

class RouterHome {
  static const name = 'home';
  static const firtsPath = '/';
  static GoRoute getGoRoute({List<RouteBase> routes = const <RouteBase>[]}) {
    return GoRoute(
      name: name,
      path: firtsPath,
      routes: routes,
      pageBuilder: (context, state) {
        final subDomain = kIsWeb
            ? Uri.parse(html.window.location.href).subDomain
            : const None<String>();

        return subDomain.fold(
          () => ConfigRouter.fadeRoute(
              state: state, child: const LandingScreen()),
          (idUrl) {
            context.read<AppCacheBloc>().add(AppCacheEvent.loadCart(idUrl));
            context
                .read<EstablishmentBloc>()
                .add(EstablishmentEvent.started(idUrl));
            return ConfigRouter.fadeRoute(
                child: EstablishmentBlocPage(idUrl: idUrl), state: state);
          },
        );
      },
    );
  }
}

class RouterEstablishment {
  static const name = 'establishment';
  static const firtsPath = 'name';
  // static const firtsPath = 'local';
  static GoRoute getGoRoute({List<RouteBase> routes = const <RouteBase>[]}) {
    return GoRoute(
      name: name,
      path: ':$firtsPath',
      redirect: (context, state) {
        return context
            .read<EstablishmentBloc>()
            .state
            .whenOrNull(isError: (failure) => '/');
      },
      routes: routes,
      pageBuilder: (context, state) {
        final idUrl = state.pathParameters[firtsPath];
        context
            .read<EstablishmentBloc>()
            .add(EstablishmentEvent.started(idUrl));

        context.read<AppCacheBloc>().add(AppCacheEvent.loadCart(idUrl));
        return ConfigRouter.fadeRoute(
            child: EstablishmentBlocPage(idUrl: idUrl), state: state);
      },
    );
  }
}

class RouterProduct {
  static const name = 'product';
  static const uuidPath = 'uuid';
  static const firtsPath = 'producto';

  static final goRoute = GoRoute(
    name: name,
    path: '$firtsPath/:$uuidPath',
    redirect: (context, state) {
      final pathBack =
          '/${state.pathParameters[RouterEstablishment.firtsPath]}';
      return context.read<EstablishmentBloc>().state.whenOrNull(
          hasData: (establishment) => establishment
              .hasProduct(state.pathParameters[uuidPath])
              .whenOrNull(isFalse: () => pathBack));
    },
    pageBuilder: (context, state) {
      return ConfigRouter.fadeRoute(
          child: DetailsProductPage(uuid: state.pathParameters[uuidPath]!),
          state: state);
    },
  );
}

class RouterCart {
  static const name = 'cart';
  static const firtsPath = 'carrito';

  static final goRoute = GoRoute(
    name: name,
    path: firtsPath,
    pageBuilder: (context, state) {
      final urlId = state.pathParameters[RouterEstablishment.firtsPath];

      return ConfigRouter.fadeRoute(
        child: ShoppingCartBlocPage(urlId: urlId),
        state: state,
      );
    },
  );
}

class RouterDeleveryOrder {
  static const name = 'deleveryOrder';
  static const firtsPath = 'pedido';

  static final goRoute = GoRoute(
    name: name,
    path: firtsPath,
    redirect: (context, state) {
      final pathBack =
          '/${state.pathParameters[RouterEstablishment.firtsPath]}/${RouterCart.firtsPath}';
      final cart = context
          .read<AppCacheBloc>()
          .state
          .cartCache[state.pathParameters[RouterEstablishment.firtsPath]];

      if (cart == null) return null;

      final isCartEmpty = cart.totalItem == 0;

      return isCartEmpty ? pathBack : null;
    },
    pageBuilder: (context, state) {
      final urlId = state.pathParameters[RouterEstablishment.firtsPath];

      return ConfigRouter.fadeRoute(
        child: DeleveryDataBlocpage(urlId: urlId!),
        state: state,
      );
    },
  );
}

class FirtsLoadingApp extends StatelessWidget {
  const FirtsLoadingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const SizedBox(
            height: 200,
            width: 200,
            child: CircularProgressIndicator(),
          ),
          Center(
            child: Image.asset(R.ASSETS_LOGO_PNG, height: 75, width: 75),
          ),
        ],
      ),
    );
  }
}
