import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';

import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/resources/injections/firebase_injection.dart';
import 'package:pedido_listo_web/resources/router/config_router.dart';
import 'package:rxdart/rxdart.dart';
import 'package:pedido_listo_web/features/establishment/domain/interface_establishment.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

import 'package:universal_html/html.dart' as html;

class FirestoreEstablishmentRepository implements IEstablishmentRepository {
  final FirebaseInjection injection;

  const FirestoreEstablishmentRepository(this.injection);

  @override
  Stream<Either<GlobalFailure<dynamic>, EstablishmentDto>> getEstablishment(
      String? name) {
    return injection.firestore
        .collection('tienda-virtual')
        .where('id_url', isEqualTo: name)
        .limit(1)
        .snapshots()
        .map<Either<GlobalFailure<dynamic>, EstablishmentDto>>((event) {
      if (event.docs.isEmpty) return left(const GlobalFailure.serverError(404));

      final establishment = EstablishmentDto.fromJson(event.docs.first.data());

      final newCategories = establishment.categories
          .where((category) => category.hasProducts)
          .toList();

      return right(establishment.copyWith(
        categories: newCategories,
        id: event.docs.first.id,
      ));
    }).onErrorReturnWith(
      (error, stackTrace) =>
          left(GlobalFailure.fromException(error, stackTrace, true)),
    );
  }

  @override
  void redirectOn404() {
    final uri = Uri.parse(html.window.location.href);

    uri.subDomain.forEach((subDomain) {
      final newUrl = uri.toString().replaceFirst(
            '$subDomain.',
            '',
          );
      html.window.location.href = newUrl;
    });
  }
}
