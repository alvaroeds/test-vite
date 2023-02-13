import 'package:flutter_test/flutter_test.dart';
import 'package:pedido_listo_web/const/calculadora.dart';

void main() {
  group('Calculadora', () {
    test('Sumar dos números enteros', () {
      final calculadora = Calculadora();
      final resultado = calculadora.sumar(2, 3);
      expect(resultado, 5);
    });
  });
}
