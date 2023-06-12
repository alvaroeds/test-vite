import 'package:flutter/material.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/summary_dto.dart';
import 'package:pedido_listo_web/presentation/order_summary/widgets/cards/costs_summary_card.dart';
import 'package:pedido_listo_web/presentation/order_summary/widgets/cards/info_card.dart';

class DataView extends StatelessWidget {
  final SummaryDto summaryDto;

  const DataView(this.summaryDto, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        InfoCard(summaryDto: summaryDto),
        CostSummaryCard(summaryDto: summaryDto),
      ],
    );
  }
}
