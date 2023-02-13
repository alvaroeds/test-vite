import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/contact/application/send_email.dart';
import 'package:pedido_listo_web/resources/injections/repository_injection.dart';

import 'package:pedido_listo_web/features/establishment/domain/interface_establishment.dart';

class RepositoryProvidersInjection {
  static List<RepositoryProvider<Object>> list(RepositoryInjection injection) =>
      [
        RepositoryProvider<SendContactEmailUseCase>(
          create: (context) =>
              SendContactEmailUseCase(injection.contactRepository),
        ),
        RepositoryProvider<IEstablishmentRepository>(
          create: (context) => injection.establishmentRepository,
        ),
      ];
}
