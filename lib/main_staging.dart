import 'package:flutter/widgets.dart';
import 'package:pedido_listo_web/app_pedido_listo.dart';
import 'package:pedido_listo_web/bootstrap.dart';
import 'package:pedido_listo_web/resources/providers/bloc_providers.dart';
import 'package:pedido_listo_web/resources/injections/firebase_injection.dart';
import 'package:pedido_listo_web/resources/injections/repository_injection.dart';
import 'package:pedido_listo_web/resources/providers/use_cases_providers.dart';
import 'package:pedido_listo_web/resources/router/config_router.dart';

void main() {
  bootstrap(() async {
    WidgetsFlutterBinding.ensureInitialized();
    final firebase = await FirebaseInjection.getInstance();
    final router = ConfigRouter.dev();

    final injection = await StagingInjection.getInstance(firebase);

    return PedidoListoApp(
      router: router,
      blocProviders: BlocProvidersInjection.list(
        await injection.userRepository.getUser(),
      ),
      repositoryProviders: RepositoryProvidersInjection.list(injection),
    );
  });
}
