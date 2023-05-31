import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/details_product_bloc_page.dart';
import 'package:pedido_listo_web/presentation/establishment/establishment_bloc_page.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/shopping_cart_bloc_page.dart';
import 'package:pedido_listo_web/resources/router/config_router.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class RouterEstablishment {
  static const name = 'establishment';
  static const firtsPath = 'name';
  // static const firtsPath = 'local';

  static final goRoute = GoRoute(
    name: name,
    path: ':$firtsPath',
    /*    builder: (BuildContext context, GoRouterState state) {

      return const EstablishmentBlocPage();
    }, */
    routes: [RouterProduct.goRoute, RouterCart.goRoute],
    pageBuilder: (context, state) {
      final idUrl = state.pathParameters[firtsPath];
      context.read<EstablishmentBloc>().add(EstablishmentEvent.started(idUrl));
      return ConfigRouter.fadeRoute(
          child: EstablishmentBlocPage(idUrl: idUrl), state: state);
    },
  );
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
