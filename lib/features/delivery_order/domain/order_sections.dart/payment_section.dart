class PaymentSection {
  final double cash;
  final bool isDelivery;
  final double cartTotalCost;
  final double deliveryCost;
  final String paymentMethod;

  PaymentSection({
    required this.deliveryCost,
    required this.cash,
    required this.paymentMethod,
    required this.cartTotalCost,
    required this.isDelivery,
  });

  String get changeText => cash == 0
      ? ''
      : '\n\nMonto a recibir: S./$cashString\nCambio: S./$change';

  String get cashString => cash.toStringAsFixed(2);

  String get change => (cash - finalTotalCost).toStringAsFixed(2);

  double get finalTotalCost =>
      cartTotalCost + (isDelivery ? deliveryCost : 0.0);

  String buildText() {
    return '''
*Método de pago: ${paymentMethod.trim()}*$changeText''';
  }
}
