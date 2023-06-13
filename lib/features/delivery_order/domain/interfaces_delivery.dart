import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/summary_dto.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

typedef IGetCurrentUrl = String Function(String idUrl);

typedef ILaunchOrderUrl = Future<Either<Unit, Unit>> Function(String url);

abstract interface class IOrderSummaryRepository {
  Future<RespondOnSave> saveOrderSummary(SummaryDto summaryDto);

  Future<RespondOnLoad> loadOrderSummary({
    required String nroOrder,
    required String establishmentId,
  });
}

typedef RespondOnSave = Either<GlobalFailure<dynamic>, String>;

typedef RespondOnSaveUC = Either<GlobalFailure<dynamic>, SummaryDto>;

typedef RespondOnLoad = Either<GlobalFailure<dynamic>, SummaryDto>;
