import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/forms/form_contact_user.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/forms/form_services_type.dart';

class DataView extends StatelessWidget {
  const DataView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Text('Informacion de contacto'),
        FormContactUser(),
        FormServicesType(),
      ],
    );
  }
}
