import 'package:flutter_test/flutter_test.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/header_order.dart';

void main() {
  test('header order text...', () {
    final dateCreated = DateTime(2021, 11, 10, 08, 10, 10);
    const locationHref = 'www.pedidolisto.com';
    final headerOrder = HeaderOrder(dateCreated, locationHref);
    final textHeader = headerOrder.buildText();

    const expectText = '''
👋 Hola! Me gustaría realizar un pedido.
Vengo de www.pedidolisto.com
📅 10/11/2021 ⏰ 08:10 am''';

    expect(textHeader, expectText);
  });
}
