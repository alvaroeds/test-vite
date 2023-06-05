import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/forms/delivery_section.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/take_away_card.dart';
import 'package:pedido_listo_web/presentation/widgets/buttons/elevated_button_app.dart';
import 'package:pedido_listo_web/presentation/widgets/buttons/outline_button_app.dart';

class FormServicesType extends StatelessWidget {
  const FormServicesType({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DeliveryOrderBloc, DeliveryOrderState, Service>(
      selector: (state) => state.service,
      builder: (context, service) {
        return Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(32),
              child: Text('Tipo de servicio'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _ServicesTab(
                    isSelected: service.isTakeaway,
                    name: 'Para llevar',
                    service: const Service.takeaway()),
                _ServicesTab(
                    isSelected: service.isDelivery,
                    name: 'Delivery',
                    service: const Service.delivery()),
              ],
            ),
            SizedBox(
                height: service.when(
              takeaway: () => 29,
              delivery: () => 20,
            )),
            service.when(
              takeaway: TakeawayCard.new,
              delivery: DeliverySection.new,
            ),
          ],
        );
      },
    );
  }
}

class _ServicesTab extends StatelessWidget {
  final bool isSelected;
  final String name;
  final Service service;
  const _ServicesTab(
      {required this.isSelected, required this.name, required this.service});

  @override
  Widget build(BuildContext context) {
    void onSelect() => context
        .read<DeliveryOrderBloc>()
        .add(DeliveryOrderEvent.updateService(service));
    return isSelected
        ? ElevatedButtonApp(
            title: name,
            onPressed: onSelect,
          )
        : OutlineButtonApp(
            title: name,
            onPressed: onSelect,
          );
  }
}
