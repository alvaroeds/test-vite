import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';

import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/mixin_style.dart';

class TakeawayCard extends StatelessWidget with CardStyle {
  const TakeawayCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeliveryOrderBloc>();
    return Container(
        padding: cardPadding,
        decoration: cardStyle,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Dirección de recojo'),
            Text(bloc.establishmentDto.localDirection),
          ],
        ));
  }
}
