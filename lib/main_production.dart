import 'package:flutter/widgets.dart';
import 'package:pedido_listo_web/app_pedido_listo.dart';
import 'package:pedido_listo_web/bootstrap.dart';
import 'package:pedido_listo_web/resources/injections/bloc_providers.dart';
import 'package:pedido_listo_web/resources/injections/firebase_injection.dart';
import 'package:pedido_listo_web/resources/injections/repository_injection.dart';
import 'package:pedido_listo_web/resources/injections/repository_providers.dart';
import 'package:pedido_listo_web/resources/router/config_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final firebase = await FirebaseInjection.getInstance();

  final router = ConfigRouter.dev();

  final injection = await StagingInjection.getInstance(firebase);

  await bootstrap(() => PedidoListoApp(
        router: router,
        blocProviders: BlocProvidersInjection.list(),
        repositoryProviders: RepositoryProvidersInjection.list(injection),
      ));
}
