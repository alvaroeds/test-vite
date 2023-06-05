import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/footer_delivery.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/forms/form_contact_user.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/forms/form_services_type.dart';

class DataView extends StatelessWidget {
  const DataView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        SizedBox(height: 20),
        TitleFormContact(),
        FormContactUser(),
        SizedBox(height: 20),
        FormServicesType(),
        SizedBox(height: 64),
        FooterDelivery()
      ],
    );
  }
}
