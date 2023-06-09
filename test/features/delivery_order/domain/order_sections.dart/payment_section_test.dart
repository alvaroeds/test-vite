import 'package:flutter_test/flutter_test.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/payment_section.dart';

void main() {
  test('payment section method Cash', () {
    final paymentSection = PaymentSection(
      deliveryCost: 5,
      cartTotalCost: 65,
      cash: 100,
      isDelivery: true,
      paymentMethod: 'Pago en Efectivo',
    );

    final text = paymentSection.buildText();

    const expectText = '''
*Método de pago: Pago en Efectivo*

Monto a recibir:  S/.100.00
Cambio:               S/.30.00''';

    expect(text, expectText);
  });

  test('payment section other method ', () {
    final paymentSection = PaymentSection(
      deliveryCost: 5,
      cartTotalCost: 65,
      cash: 0,
      isDelivery: false,
      paymentMethod: 'Yape',
    );

    final text = paymentSection.buildText();

    const expectText = '''
*Método de pago: Yape*''';

    expect(text, expectText);
  });
}
