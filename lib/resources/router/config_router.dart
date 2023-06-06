import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';

class ConfigRouter {
  final GoRouter goRouter;

  ConfigRouter._(this.goRouter);

  factory ConfigRouter.test() => ConfigRouter._(
        ConfigRouter.getGoRouter(
          routes: [
            RouterHome.getGoRoute(
              routes: [
                RouterEstablishment.getGoRoute(routes: [
                  RouterProduct.goRoute,
                  RouterCart.goRoute,
                ]),
              ],
            )
          ],
        ),
      );

  factory ConfigRouter.dev() => ConfigRouter._(
        ConfigRouter.getGoRouter(
          routes: [
            RouterHome.getGoRoute(
              routes: [
                RouterEstablishment.getGoRoute(routes: [
                  RouterProduct.goRoute,
                  RouterCart.goRoute,
                  RouterDeleveryOrder.goRoute,
                ]),
              ],
            )
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
      initialLocation: RouterHome.firtsPath,
      routes: routes,
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

extension SubDomain on Uri {
  bool get _hasSubDomain =>
      host.split('.').length > 2 && int.tryParse(host.split('.').first) == null;

  Option<String> get subDomain {
    if (_hasSubDomain) {
      final domain = host.split('.').first;

      if (domain == 'pedido-listo') return none();

      if (domain == 'www') return none();

      return some(domain);
    }
    return none();
  }
}
