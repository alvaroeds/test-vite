import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/details_product_bloc_page.dart';
import 'package:pedido_listo_web/presentation/establishment/establishment_bloc_page.dart';
import 'package:pedido_listo_web/resources/router/config_router.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class RouterEstablishment {
  static const firtsParam = 'name';
  static const name = 'establishment';
  // static const firtsPath = 'local';

  static final goRoute = GoRoute(
    name: name,
    path: ':$firtsParam',
    /*    builder: (BuildContext context, GoRouterState state) {

      return const EstablishmentBlocPage();
    }, */
    routes: [RouterProduct.goRoute],
    pageBuilder: (context, state) {
      context
          .read<EstablishmentBloc>()
          .add(EstablishmentEvent.started(state.pathParameters[firtsParam]));
      return ConfigRouter.fadeRoute(
          child: const EstablishmentBlocPage(), state: state);
    },
  );
}

class RouterProduct {
  static const uuidParam = 'uuid';
  static const name = 'product';
  static const firtsPath = 'producto';

  static final goRoute = GoRoute(
    name: name,
    path: '$firtsPath/:$uuidParam',
    redirect: (context, state) {
      final pathBack =
          '/${state.pathParameters[RouterEstablishment.firtsParam]}';
      return context.read<EstablishmentBloc>().state.whenOrNull(
          hasData: (establishment) => establishment
              .hasProduct(state.pathParameters[uuidParam])
              .whenOrNull(isFalse: () => pathBack));
    },
    pageBuilder: (context, state) {
      return ConfigRouter.fadeRoute(
          child: DetailsProductPage(uuid: state.pathParameters[uuidParam]!),
          state: state);
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
