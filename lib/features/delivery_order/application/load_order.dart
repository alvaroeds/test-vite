import 'package:pedido_listo_web/features/delivery_order/domain/interfaces_delivery.dart';

class LoadOrderUseCase {
  final IOrderSummaryRepository _repository;

  LoadOrderUseCase(this._repository);

  Future<RespondOnLoad> call({
    required String nroOrder,
    required String establishmentId,
  }) {
    return _repository.loadOrderSummary(
      nroOrder: nroOrder,
      establishmentId: establishmentId,
    );
  }
}
