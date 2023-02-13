import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/resources/router/config_router.dart';
import 'package:pedido_listo_web/resources/theme/theme_app.dart';

class PedidoListoApp extends StatelessWidget {
  final List<RepositoryProvider<Object>> repositoryProviders;
  final List<BlocProvider> blocProviders;
  final ConfigRouter router;
  const PedidoListoApp({
    required this.blocProviders,
    required this.repositoryProviders,
    required this.router,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: repositoryProviders,
      child: MultiBlocProvider(
        providers: blocProviders,
        child: MaterialApp.router(
          routeInformationProvider: router.goRouter.routeInformationProvider,
          routeInformationParser: router.goRouter.routeInformationParser,
          routerDelegate: router.goRouter.routerDelegate,
          title: 'Pedido Listo App',
          debugShowCheckedModeBanner: false,
          theme: ThemeApp.light,
        ),
      ),
    );
  }
}
