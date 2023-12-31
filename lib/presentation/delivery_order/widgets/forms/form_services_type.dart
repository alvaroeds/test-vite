import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/forms/delivery_section.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/take_away_card.dart';
import 'package:pedido_listo_web/presentation/widgets/buttons/elevated_button_app.dart';
import 'package:pedido_listo_web/presentation/widgets/buttons/outline_button_app.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class FormServicesType extends StatelessWidget {
  const FormServicesType({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DeliveryOrderBloc, DeliveryOrderState, Service>(
      selector: (state) => state.service,
      builder: (context, service) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Tipo de servicio',
                style: context.interBold1Title
                    ?.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _ServicesTab(
                    isSelected: service.isTakeaway,
                    name: 'Para llevar',
                    service: const Service.takeaway()),
                const SizedBox(width: 8),
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
    final width = MediaQuery.of(context).size.width * 0.445;
    final buttonWidth = min(width, 188.5);
    void onSelect() => context
        .read<DeliveryOrderBloc>()
        .add(DeliveryOrderEvent.updateService(service));
    final color = isSelected ? Colors.white : Colors.black;
    final icon = service.when(
      takeaway: () => R.ASSETS_SVG_PEDIDO_SVG.toSvg(color: color),
      delivery: () => R.ASSETS_SVG_DELIVERY_SVG.toSvg(color: color),
    );
    return isSelected
        ? ElevatedButtonApp(
            icon: icon,
            title: name,
            width: buttonWidth,
            height: 50,
            style: context.interBold2Title
                ?.copyWith(fontSize: 20, color: Colors.white),
            onPressed: onSelect,
          )
        : OutlineButtonApp(
            title: name,
            icon: icon,
            width: buttonWidth,
            borderWith: 02,
            height: 50,
            primaryColor: Colors.black,
            style: context.interBold2Title?.copyWith(fontSize: 20),
            onPressed: onSelect,
          );
  }
}
