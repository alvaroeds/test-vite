import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';

import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/mixin_style.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class TakeawayCard extends StatelessWidget with CardStyle {
  const TakeawayCard({super.key});

  @override
  Widget build(BuildContext context) {
    final localDirection =
        context.read<DeliveryOrderBloc>().state.establishmentDto.localDirection;
    return Container(
        padding: cardPadding,
        margin: cardMargin,
        decoration: cardStyle,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dirección de recojo',
                style: context.currentStyle.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 18),
            Row(
              children: [
                R.ASSETS_SVG_SHOP_SVG.toSvg(),
                const SizedBox(width: 12),
                Expanded(
                  child: SelectableText(localDirection,
                      style: context.currentStyle.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 14)),
                ),
              ],
            ),
          ],
        ));
  }
}
