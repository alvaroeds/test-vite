import 'package:pedido_listo_web/features/contact/domain/interface_contact_repository.dart';
import 'package:pedido_listo_web/features/contact/infraestructure/firebase_contact_repository.dart';
import 'package:pedido_listo_web/features/contact/infraestructure/mock_contact_repository.dart';
import 'package:pedido_listo_web/features/establishment/domain/interface_establishment.dart';
import 'package:pedido_listo_web/features/establishment/infraestructure/firestore_establishment_repository.dart';
import 'package:pedido_listo_web/features/establishment/infraestructure/mock_establishment_repository.dart';
import 'package:pedido_listo_web/features/shopping_cart/infraestructure/preferences_cart_repository.dart';
import 'package:pedido_listo_web/resources/injections/firebase_injection.dart';

import 'package:pedido_listo_web/features/shopping_cart/domain/i_cart_repository.dart';

class RepositoryInjection {
  final IEstablishmentRepository establishmentRepository;
  final InterfaceContactRepository contactRepository;
  final ICartRepository cartRepository;

  RepositoryInjection({
    required this.cartRepository,
    required this.establishmentRepository,
    required this.contactRepository,
  });
}

class DevInjection {
  DevInjection._();

  static Future<RepositoryInjection> getInstance() async {
    final establishmentRepository = MockEstablishmentRepository();
    const contactRepository = MockContactRepository();
    final cartRepository = await PreferencesCartRepository.instance();

    return RepositoryInjection(
      cartRepository: cartRepository,
      contactRepository: contactRepository,
      establishmentRepository: establishmentRepository,
    );
  }
}

class StagingInjection {
  StagingInjection._();

  static Future<RepositoryInjection> getInstance(
      FirebaseInjection firebase) async {
    final establishmentRepository = FirestoreEstablishmentRepository(firebase);
    final contactRepository = FirebaseContactRepository(firebase);
    final cartRepository = await PreferencesCartRepository.instance();
    return RepositoryInjection(
      cartRepository: cartRepository,
      contactRepository: contactRepository,
      establishmentRepository: establishmentRepository,
    );
  }
}
