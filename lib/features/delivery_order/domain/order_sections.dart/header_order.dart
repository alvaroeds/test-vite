import 'package:pedido_listo_web/features/delivery_order/domain/extions.dart';

class HeaderOrder {
  final DateTime _createdAt;
  final String _locationHref;

  HeaderOrder(this._createdAt, this._locationHref);

  factory HeaderOrder.now(String locationHref) =>
      HeaderOrder(DateTime.now(), locationHref);

  String get _horaDePedido => _createdAt.timeFormat;

  String get _fechaDePedido => _createdAt.dateFormat;

  String buildText() {
    return '''
\u{1F44B} Hola! Me gustaría realizar un pedido.
Vengo de $_locationHref
\u{1F4C5} $_fechaDePedido \u{23F0} $_horaDePedido''';
  }
}
