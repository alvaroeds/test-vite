import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/contact/domain/value_objects.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

// ignore: one_member_abstracts
abstract interface class InterfaceContactRepository {
  Future<Either<GlobalFailure<dynamic>, Unit>> sendAndSaveEmail({
    required EmailAddress emailAddress,
  });
}
