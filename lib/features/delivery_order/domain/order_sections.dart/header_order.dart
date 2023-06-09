import 'package:intl/intl.dart';

extension DateFormats on DateTime {
  String get dateFormat => DateFormat('dd/MM/yyyy').format(this);

  String get timeFormat => DateFormat('hh:mm a').format(this).toLowerCase();
}

class HeaderOrder {
  final DateTime _createdAt;
  final String _locationHref;

  HeaderOrder(this._createdAt, this._locationHref);

  HeaderOrder.now(this._locationHref) : _createdAt = DateTime.now();

  String get _horaDePedido => _createdAt.timeFormat;

  String get _fechaDePedido => _createdAt.dateFormat;

  String buildText() {
    return '''
\u{1F44B} Hola! Me gustaría realizar un pedido.
Vengo de $_locationHref
\u{1F4C5} $_fechaDePedido \u{23F0} $_horaDePedido''';
  }
}
