import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';

import 'package:universal_html/html.dart' as html;

class ConfigRouter {
  final GoRouter goRouter;

  ConfigRouter._(this.goRouter);

  factory ConfigRouter.test() => ConfigRouter._(
        ConfigRouter.getGoRouter(
          hasSubDomain: false,
          routes: [
            RouterHome.getGoRoute(
              subDomain: const None(),
              routes: [
                RouterEstablishment.getGoRoute(
                    subDomain: const None(),
                    routes: [
                      RouterProduct.goRoute,
                      RouterCart.goRoute,
                    ]),
              ],
            )
          ],
        ),
      );

  factory ConfigRouter.dev() {
    final subDomain = kIsWeb
        ? Uri.parse(html.window.location.href).subDomain
        : const None<String>();

    return ConfigRouter._(
      ConfigRouter.getGoRouter(
        hasSubDomain: subDomain.isSome(),
        routes: [
          RouterHome.getGoRoute(
            subDomain: subDomain,
            routes: [
              if (subDomain.isNone())
                RouterEstablishment.getGoRoute(subDomain: subDomain, routes: [
                  RouterProduct.goRoute,
                  RouterCart.goRoute,
                  RouterDeleveryOrder.goRoute,
                ]),
            ],
          ),
          if (subDomain.isSome())
            RouterEstablishment.getGoRoute(subDomain: subDomain, routes: [
              RouterProduct.goRoute,
              RouterCart.goRoute,
              RouterDeleveryOrder.goRoute,
            ])
        ],
      ),
    );
  }

  static GoRouter getGoRouter({
    required bool hasSubDomain,
    List<GoRoute> routes = const <GoRoute>[],
    ChangeNotifier? changeNotifier,
  }) {
    //usePathUrlStrategy();
    //* remove hash
    return GoRouter(
      refreshListenable: changeNotifier,
      initialLocation: hasSubDomain ? '/' : RouterHome.firtsPath,
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
