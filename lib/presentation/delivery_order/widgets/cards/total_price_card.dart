import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';

import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/mixin_style.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class TotalPriceCard extends StatefulWidget {
  const TotalPriceCard({super.key});

  @override
  State<TotalPriceCard> createState() => _TotalPriceCardState();
}

class _TotalPriceCardState extends State<TotalPriceCard> with CardStyle {
  bool isShowDeatails = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: cardStyle,
        margin: cardMargin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isShowDeatails = !isShowDeatails;
                });
              },
              child: Padding(
                padding: cardPadding,
                child: Row(
                  children: [
                    R.ASSETS_SVG_CURRENCY_DOLLAR_SVG.toSvg(),
                    const SizedBox(width: 4),
                    const Expanded(
                      child: _TextCard(),
                    ),
                    if (isShowDeatails)
                      const Icon(Icons.keyboard_arrow_up,
                          color: Color(0xff111928), size: 30)
                    else
                      const Icon(Icons.keyboard_arrow_down,
                          color: Color(0xff111928), size: 30)
                  ],
                ),
              ),
            ),
            if (isShowDeatails) const DetailList()
          ],
        ));
  }
}

class DetailList extends StatelessWidget with CardStyle {
  const DetailList({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<DeliveryOrderBloc>().state;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        children: [
          ...state.shoppingCartDto.items.map((item) => DetailTile(
                description: 'x${item.quantity} ${item.product.name}',
                price: item.totalCostWithDiscount,
              )),
          _DeliveryCost(
            builder: (totalFinalCost, deliveryCost) {
              return DetailTile(
                description: 'Costo de entrega',
                price: deliveryCost,
              );
            },
          ),
          _DeliveryCost(
            builder: (totalFinalCost, deliveryCost) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: DetailTile(
                  isBold: true,
                  description: 'Costo Total',
                  price: totalFinalCost,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class _TextCard extends StatelessWidget {
  const _TextCard();

  @override
  Widget build(BuildContext context) {
    return _DeliveryCost(
      builder: (totalFinalCost, _) {
        return RichText(
          text: TextSpan(
            text: 'Costo Total:  ',
            style: context.currentStyle.bodyMedium
                ?.copyWith(fontWeight: FontWeight.bold, fontSize: 14),
            children: <TextSpan>[
              TextSpan(
                text: totalFinalCost.formattedPrice,
                style: TextStyle(
                  color: context.primaryColor,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class DetailTile extends StatelessWidget {
  final bool isBold;
  final String description;
  final double price;

  const DetailTile(
      {required this.description,
      required this.price,
      this.isBold = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = context.currentStyle.displaySmall?.copyWith(
        fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
        fontSize: 14,
        color: const Color(0xff565C66));
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(description, style: textStyle),
          Text(price.formattedPrice, style: textStyle),
        ],
      ),
    );
  }
}

class _DeliveryCost extends StatelessWidget {
  final Widget Function(double totalFinalCost, double deliveryCost) builder;
  const _DeliveryCost({required this.builder});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DeliveryOrderBloc, DeliveryOrderState,
        (double, double)>(
      selector: (state) {
        return (state.totalFinalCost, state.deliveryCost);
      },
      builder: (context, state) {
        return builder(state.$1, state.$2);
      },
    );
  }
}
