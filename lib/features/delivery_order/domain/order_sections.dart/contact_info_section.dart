import 'package:dartz/dartz.dart';

class ContactInfoSection {
  final String name;
  final String phone;
  final Option<String> address;
  final String additionalDetail;

  const ContactInfoSection(
      {required this.name,
      required this.phone,
      required this.additionalDetail,
      required this.address});

  String get _serviceText => address.fold(
        () => 'Para llevar',
        (_) => 'Domicilio',
      );
  String get _contactAddress => address.fold(
        () => '',
        (address) => '\nDirección: ${address.trim()}',
      );

  String get _additionalDetail => additionalDetail.isEmpty || address.isNone()
      ? ''
      : '\n${additionalDetail.trim()}';

  String get _phone => phone.trim();

  String get _name => name.trim();

  String buildText() {
    final text = template
        .replaceAll('[TIPO_DE_SERVICIO]', _serviceText)
        .replaceAll('[NAME]', _name)
        .replaceAll('[PHONE]', _phone)
        .replaceAll('[DIRECCION]', _contactAddress)
        .replaceAll('[ADICIONAL]', _additionalDetail);
    return text;
  }

  static const template = '''
*Tipo de servicio: [TIPO_DE_SERVICIO]*

Nombre: [NAME]
Teléfono: [PHONE][DIRECCION][ADICIONAL]''';
}
