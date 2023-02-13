// 📦 Package imports:

import 'package:pedido_listo_web/features/contact/domain/contact_result.dart';
import 'package:pedido_listo_web/features/contact/domain/interface_contact_repository.dart';
import 'package:pedido_listo_web/features/contact/domain/value_objects.dart';

class SendContactEmailUseCase {
  final InterfaceContactRepository _repositoryContact;

  //final RepositoryPersistenciaLocal _repositoryPersistencia;

  SendContactEmailUseCase(this._repositoryContact);

  Future<ContactResult> execute(
    String emailAddressStr,
  ) async {
    final emailAddress = EmailAddress(emailAddressStr);

    return emailAddress.value.fold(ContactResult.formError, (_) async {
      final respuesta =
          await _repositoryContact.sendAndSaveEmail(emailAddress: emailAddress);

      return respuesta.fold(ContactResult.notSucces, ContactResult.succes);
    });
  }
}
