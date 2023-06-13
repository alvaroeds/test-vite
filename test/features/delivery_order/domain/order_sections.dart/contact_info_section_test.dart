import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/order_sections.dart/contact_info_section.dart';

void main() {
  const name = 'Jacobo Conislla';
  const phone = '987654321';
  const additionalDetail = 'Segundo piso';
  const address = 'Av. Los Alamos 123';

  test('contact info section with address', () {
    final contactInfoSection = ContactInfoSection(
      name: name,
      phone: phone,
      additionalDetail: additionalDetail,
      address: some(address),
    );

    final text = contactInfoSection.buildText();

    const expectText = '''
*Tipo de servicio: Domicilio*

Nombre: $name
Teléfono: $phone
Dirección: $address
$additionalDetail''';

    expect(text, expectText);
  });
  test('contact info section without address', () {
    final contactInfoSection = ContactInfoSection(
      name: name,
      phone: phone,
      additionalDetail: additionalDetail,
      address: none(),
    );

    final text = contactInfoSection.buildText();

    const expectText = '''
*Tipo de servicio: Para llevar*

Nombre: $name
Teléfono: $phone''';

    expect(text, expectText);
  });
  test('contact info section additionalDetail empty', () {
    final contactInfoSection = ContactInfoSection(
      name: name,
      phone: phone,
      additionalDetail: '',
      address: some(address),
    );

    final text = contactInfoSection.buildText();

    const expectText = '''
*Tipo de servicio: Domicilio*

Nombre: $name
Teléfono: $phone
Dirección: $address''';

    expect(text, expectText);
  });
  test('contact info section trim expect', () {
    final contactInfoSection = ContactInfoSection(
      name: '   $name  \n ',
      phone: '  $phone   ',
      additionalDetail: '   $additionalDetail   ',
      address: some('   $address   '),
    );

    final text = contactInfoSection.buildText();

    const expectText = '''
*Tipo de servicio: Domicilio*

Nombre: $name
Teléfono: $phone
Dirección: $address
$additionalDetail''';

    expect(text, expectText);
  });
}
