import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/summary_dto.dart';

import 'package:pedido_listo_web/presentation/order_summary/widgets/cards/mixin_style.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class CostSummaryCard extends StatefulWidget {
  final SummaryDto summaryDto;

  const CostSummaryCard({required this.summaryDto, super.key});

  @override
  State<CostSummaryCard> createState() => _CostSummaryCardState();
}

class _CostSummaryCardState extends State<CostSummaryCard> with CardStyle {
  bool isShowDeatails = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: cardStyle,
      margin: cardMargin,
      padding: cardPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => setState(() => isShowDeatails = !isShowDeatails),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                R.ASSETS_SVG_CURRENCY_DOLLAR_SVG.toSvg(width: 25),
                const SizedBox(width: 4),
                Expanded(
                    child: _TextHeader(widget.summaryDto.totalCost,
                        widget.summaryDto.methodOfPayment)),
                Icon(
                    isShowDeatails
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    size: 30)
              ],
            ),
          ),
          if (isShowDeatails) ...[
            if (widget.summaryDto.isPayWithCash)
              _ChangeSection(
                cash: widget.summaryDto.cashOfClient,
                change: widget.summaryDto.change,
              ),
            _DetailCostSection(
              deliveryCost: widget.summaryDto.deliveryCost,
              productsCost: widget.summaryDto.costOfProducts,
            )
          ]
        ],
      ),
    );
  }
}

class _TextHeader extends StatelessWidget {
  final double totalCost;
  final String paymentMethod;
  const _TextHeader(this.totalCost, this.paymentMethod);

  @override
  Widget build(BuildContext context) {
    final manrope = GoogleFonts.manrope(
        color: const Color(0xff565C66), height: 1.35, fontSize: 12);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: 'Total: ',
            style: manrope.copyWith(fontWeight: FontWeight.bold, fontSize: 14),
            children: <TextSpan>[
              TextSpan(
                text: totalCost.formattedPrice,
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text('Método de pago: $paymentMethod',
            style: manrope.copyWith(fontWeight: FontWeight.w500)),
        const SizedBox(height: 4),
        Text('No Pagado',
            style: manrope.copyWith(
                fontWeight: FontWeight.w900, color: Colors.red)),
      ],
    );
  }
}

class _ChangeSection extends StatelessWidget {
  final double cash;
  final double change;

  const _ChangeSection({required this.cash, required this.change});

  @override
  Widget build(BuildContext context) {
    final manrope = GoogleFonts.manrope(
        color: const Color(0xff565C66), height: 1.35, fontSize: 12);
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Monto recibido', style: manrope),
            Text(cash.formattedPrice, style: manrope),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Cambio', style: manrope),
            Text(change.formattedPrice, style: manrope),
          ],
        ),
      ],
    );
  }
}

class _DetailCostSection extends StatelessWidget {
  final double productsCost;
  final double deliveryCost;
  const _DetailCostSection(
      {required this.productsCost, required this.deliveryCost});

  @override
  Widget build(BuildContext context) {
    final manrope = GoogleFonts.manrope(
        color: const Color(0xff565C66), height: 1.35, fontSize: 12);
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Resumen de costos:',
              style:
                  manrope.copyWith(fontWeight: FontWeight.w600, fontSize: 14),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Productos', style: manrope),
            Text(productsCost.formattedPrice, style: manrope),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Costo de entrega', style: manrope),
            Text(deliveryCost.formattedPrice, style: manrope),
          ],
        ),
      ],
    );
  }
}
