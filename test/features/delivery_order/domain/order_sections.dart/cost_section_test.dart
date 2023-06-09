import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/cost_section.dart';

void main() {
  test('cost section with delivery', () {
    const totalCost = 10.0;
    const deliveryCost = 5.0;
    final costSection = CostSection(
      totalCost: totalCost,
      deliveryCost: some(deliveryCost),
    );

    final text = costSection.buildText();

    const expectText = '''
💲 *Costos*
Costo de los productos: S/.10.00
Costo de entrega: S/.5.00

*Total a pagar: S/.15.00*''';

    expect(text, expectText);
  });

  test('cost section without delivery', () {
    const totalCost = 10.0;
    final costSection = CostSection(
      totalCost: totalCost,
      deliveryCost: none(),
    );

    final text = costSection.buildText();

    const expectText = '''
💲 *Costos*
Costo de los productos: S/.10.00

*Total a pagar: S/.10.00*''';

    expect(text, expectText);
  });

  test('cost section with delivery free', () {
    const totalCost = 10.0;
    final costSection = CostSection(
      totalCost: totalCost,
      deliveryCost: some(0),
    );

    final text = costSection.buildText();

    const expectText = '''
💲 *Costos*
Costo de los productos: S/.10.00
Costo de entrega: FREE!

*Total a pagar: S/.10.00*''';

    expect(text, expectText);
  });
}
