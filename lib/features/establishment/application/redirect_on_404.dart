import 'package:pedido_listo_web/features/establishment/domain/interface_establishment.dart';

class RedirectOn404UseCase {
  final IEstablishmentRepository _repository;

  RedirectOn404UseCase(this._repository);

  void call() {
    _repository.redirectOn404();
  }
}
