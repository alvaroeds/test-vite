import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';
//import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:universal_html/html.dart' as html;

class ConfigRouter {
  final GoRouter goRouter;

  ConfigRouter._(this.goRouter);

  factory ConfigRouter.test() => ConfigRouter._(
        ConfigRouter.getGoRouter(
          routes: [
            RouterHome.getGoRoute(
              subDomain: const None(),
              routes: [
                RouterEstablishment.getGoRoute(
                    subDomain: const None(),
                    routes: [
                      RouterProduct.getGoRoute(subDomain: const None()),
                      RouterCart.getGoRoute(subDomain: const None()),
                      RouterDeleveryOrder.getGoRoute(subDomain: const None()),
                      RouterSummaryOrder.getGoRoute(subDomain: const None()),
                    ]),
              ],
            )
          ],
        ),
      );

  factory ConfigRouter.dev() {
    final subDomain = kIsWeb
        ? Uri.parse(html.window.location.href).subDomain
        : const None<String?>();

    GoRouter.optionURLReflectsImperativeAPIs = true;

    final routerEstablishment =
        RouterEstablishment.getGoRoute(subDomain: subDomain, routes: [
      RouterProduct.getGoRoute(subDomain: subDomain),
      RouterCart.getGoRoute(subDomain: subDomain),
      RouterDeleveryOrder.getGoRoute(subDomain: subDomain),
      RouterSummaryOrder.getGoRoute(subDomain: subDomain),
    ]);

    return ConfigRouter._(
      ConfigRouter.getGoRouter(
        routes: [
          if (subDomain.isSome())
            routerEstablishment
          else
            RouterHome.getGoRoute(
              subDomain: subDomain,
              routes: [routerEstablishment],
            ),
        ],
      ),
    );
  }

  static GoRouter getGoRouter({
    List<GoRoute> routes = const <GoRoute>[],
    ChangeNotifier? changeNotifier,
  }) {
    //usePathUrlStrategy();

    return GoRouter(
      refreshListenable: changeNotifier,
      initialLocation: '/',
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

  Option<String?> get subDomain {
    if (_hasSubDomain) {
      final domain = host.split('.').first;

      if (domain == 'pedido-listo') return none();

      if (domain == 'www') return none();

      return some(domain);
    }
    return none();
  }
}
