import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/interfaces_delivery.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/summary_dto.dart';

class MockOrderSummaryRepository implements IOrderSummaryRepository {
  MockOrderSummaryRepository();

  @override
  Future<RespondOnLoad> loadOrderSummary(
      {required String nroOrder, required String establishmentId}) async {
    throw UnimplementedError();
  }

  @override
  Future<RespondOnSave> saveOrderSummary(SummaryDto summaryDto) async {
    await Future<void>.delayed(const Duration(seconds: 2));

    return right('1686548096094');
  }
}
