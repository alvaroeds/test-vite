import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/interfaces_delivery.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/summary_dto.dart';
import 'package:pedido_listo_web/resources/injections/firebase_injection.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

class FirestoreOrderSummaryRepository implements IOrderSummaryRepository {
  final FirebaseInjection _injection;

  const FirestoreOrderSummaryRepository(this._injection);

  static const String _COLLECTION_ORDERS = 'orders';
  static const String _COLLECTION_ESTABLISHMENT = 'tienda-virtual';

  @override
  Future<RespondOnLoad> loadOrderSummary({
    required String nroOrder,
    required String establishmentId,
  }) async {
    try {
      final ordersCollection = _injection.firestore
          .collection(_COLLECTION_ESTABLISHMENT)
          .doc(establishmentId)
          .collection(_COLLECTION_ORDERS);

      final orderDoc = ordersCollection.doc(nroOrder);

      final orderSnapshot = await orderDoc.get();

      if (!orderSnapshot.exists) {
        return left(const GlobalFailure<dynamic>.serverError(404));
      }

      final summaryDto = SummaryDto.fromJson(orderSnapshot.data()!);

      return right(summaryDto);
    } catch (e) {
      return left(GlobalFailure<dynamic>.fromException(e));
    }
  }

  @override
  Future<RespondOnSave> saveOrderSummary(SummaryDto summaryDto) async {
    try {
      // return right('1686548096094');
      final ordersCollection = _injection.firestore
          .collection(_COLLECTION_ESTABLISHMENT)
          .doc(summaryDto.establishmentId)
          .collection(_COLLECTION_ORDERS);

      final orderDoc = ordersCollection.doc(summaryDto.nroOrder);

      await orderDoc.set(summaryDto.convertToJson());

      return right(orderDoc.id);
    } catch (e) {
      return left(GlobalFailure<dynamic>.fromException(e));
    }
  }
}
