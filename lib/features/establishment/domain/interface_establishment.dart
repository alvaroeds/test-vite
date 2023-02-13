import 'package:dartz/dartz.dart';

import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

// ignore: one_member_abstracts
abstract interface class IEstablishmentRepository {
  Stream<Either<GlobalFailure<dynamic>, EstablishmentDto>> getEstablishment(
      String? name);
}
