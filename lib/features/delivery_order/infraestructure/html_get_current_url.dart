import 'package:flutter/foundation.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/interfaces_delivery.dart';
import 'package:pedido_listo_web/resources/router/config_router.dart';

import 'package:universal_html/html.dart' as html;

IGetCurrentUrl getCurrentUrl = (String idUrl) {
  if (!kIsWeb) {
    return 'Pedido listo App';
  }

  final uri = Uri.parse(html.window.location.href);

  final subDomain = uri.subDomain;

  return subDomain.fold(() {
    if (uri.toString().contains('#')) return '$idUrl.${uri.host}';

    return '${uri.host}/$idUrl';
  }, (_) {
    return uri.host;
  });
};
