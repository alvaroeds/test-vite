import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/establishment_bloc_page.dart';
import 'package:pedido_listo_web/presentation/landing/landing_screen.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';

import 'package:universal_html/html.dart' as html;

class ConfigRouter {
  final GoRouter goRouter;

  ConfigRouter._(this.goRouter);

  factory ConfigRouter.test() => ConfigRouter._(
        getGoRouter(
          routes: <GoRoute>[
            RouterEstablishment.goRoute,
          ],
        ),
      );

  factory ConfigRouter.dev() => ConfigRouter._(
        getGoRouter(
          routes: <GoRoute>[
            RouterEstablishment.goRoute,
          ],
        ),
      );

  static GoRouter getGoRouter({
    List<GoRoute> routes = const <GoRoute>[],
    ChangeNotifier? changeNotifier,
  }) {
    //usePathUrlStrategy();
    //* remove hash
    return GoRouter(
      refreshListenable: changeNotifier,
      initialLocation: '/',
      routes: <GoRoute>[
        /*  GoRoute(
          path: '/${RouterEstablishment.firtsPath}',
          redirect: (context, state) => '/',
        ), */
        GoRoute(
          path: '/',
          builder: (context, GoRouterState state) => const LandingScreen(),
          // builder: (context, GoRouterState state) => const HomeReduxPage(),
          routes: routes,
          pageBuilder: (context, state) {
            final uri = Uri.parse(html.window.location.href);
            final hostParts = uri.host.split('.');

            if (hostParts.length > 2) {
              context
                  .read<EstablishmentBloc>()
                  .add(EstablishmentEvent.started(hostParts.first));
              return ConfigRouter.fadeRoute(
                  child: const EstablishmentBlocPage(), state: state);
            }

            return fadeRoute(state: state, child: const LandingScreen());
          },
        ),
      ],
    );
  }

  static CustomTransitionPage<void> fadeRoute(
      {required GoRouterState state, required Widget child}) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (_, animation, __, child) => FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}
