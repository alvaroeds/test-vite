import 'package:dartz/dartz.dart';

class CostSection {
  static String _fix(double value) => value.toStringAsFixed(2);

  final double totalCost;
  final Option<double> deliveryCost;

  CostSection({
    required this.deliveryCost,
    required this.totalCost,
  });

  String get _deliveryCostText => deliveryCost.fold(
        () => '',
        (cost) => '\nCosto de entrega: ${_getTextCost(cost)}',
      );

  String _getTextCost(double cost) => cost == 0 ? 'FREE!' : 'S/.${_fix(cost)}';

  double get _finalTotalCost => totalCost + deliveryCost.getOrElse(() => 0.0);

  String buildText() {
    return '''
💲 *Costos*
Costo de los productos: S/.${_fix(totalCost)}$_deliveryCostText

*Total a pagar: S/.${_fix(_finalTotalCost)}*''';
  }
}
