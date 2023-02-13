import 'package:dartz/dartz.dart';

import 'package:pedido_listo_web/features/contact/domain/interface_contact_repository.dart';
import 'package:pedido_listo_web/features/contact/domain/value_objects.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

class MockContactRepository implements InterfaceContactRepository {
  const MockContactRepository();

  @override
  Future<Either<GlobalFailure<dynamic>, Unit>> sendAndSaveEmail(
      {required EmailAddress emailAddress}) async {
    return right(unit);
  }
}
