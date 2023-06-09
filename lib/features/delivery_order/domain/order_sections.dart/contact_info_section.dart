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
  String get _contactDirection => address.fold(
        () => '',
        (address) => '\nDirección: ${address.trim()}',
      );

  String get _additionalDetail => additionalDetail.isEmpty || address.isNone()
      ? ''
      : '\n${additionalDetail.trim()}';

  String get _phone => phone.trim();

  String get _name => name.trim();

  String buildText() {
    return '''
*Tipo de servicio: $_serviceText*

Nombre: $_name
Teléfono: $_phone$_contactDirection$_additionalDetail''';
  }
}
