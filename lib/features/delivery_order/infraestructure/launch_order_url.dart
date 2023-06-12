import 'package:dartz/dartz.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:pedido_listo_web/features/delivery_order/domain/interfaces_delivery.dart';

ILaunchOrderUrl launchOrderUrl = (url) async {
  final uri = Uri.tryParse(url);

  if (uri == null) return right(unit);

  final res = await launchUrl(uri);

  return res ? right(unit) : left(unit);
};
