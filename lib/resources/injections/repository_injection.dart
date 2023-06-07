import 'package:pedido_listo_web/features/contact/domain/interface_contact_repository.dart';
import 'package:pedido_listo_web/features/contact/infraestructure/firebase_contact_repository.dart';
import 'package:pedido_listo_web/features/contact/infraestructure/mock_contact_repository.dart';
import 'package:pedido_listo_web/features/establishment/domain/interface_establishment.dart';
import 'package:pedido_listo_web/features/establishment/infraestructure/firestore_establishment_repository.dart';
import 'package:pedido_listo_web/features/establishment/infraestructure/mock_establishment_repository.dart';
import 'package:pedido_listo_web/features/shopping_cart/infraestructure/preferences_cart_repository.dart';
import 'package:pedido_listo_web/features/user/domain/i_user_repository.dart';
import 'package:pedido_listo_web/features/user/infraestructure/preferences_user_repository.dart';
import 'package:pedido_listo_web/resources/injections/firebase_injection.dart';

import 'package:pedido_listo_web/features/shopping_cart/domain/i_cart_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RepositoryInjection {
  final IEstablishmentRepository establishmentRepository;
  final InterfaceContactRepository contactRepository;
  final InterfaceCartRepository cartRepository;
  final InterfaceUserRepository userRepository;

  RepositoryInjection({
    required this.cartRepository,
    required this.establishmentRepository,
    required this.contactRepository,
    required this.userRepository,
  });
}

class DevInjection {
  DevInjection._();

  static Future<RepositoryInjection> getInstance() async {
    final sharedPreferences = await SharedPreferences.getInstance();

    final establishmentRepository = MockEstablishmentRepository();
    const contactRepository = MockContactRepository();
    final cartRepository = PreferencesCartRepository(sharedPreferences);
    final userRepository = PreferencesUserRepository(sharedPreferences);

    return RepositoryInjection(
      cartRepository: cartRepository,
      userRepository: userRepository,
      contactRepository: contactRepository,
      establishmentRepository: establishmentRepository,
    );
  }
}

class StagingInjection {
  StagingInjection._();

  static Future<RepositoryInjection> getInstance(
      FirebaseInjection firebase) async {
    final sharedPreferences = await SharedPreferences.getInstance();

    final establishmentRepository = FirestoreEstablishmentRepository(firebase);
    final contactRepository = FirebaseContactRepository(firebase);
    final cartRepository = PreferencesCartRepository(sharedPreferences);
    final userRepository = PreferencesUserRepository(sharedPreferences);

    return RepositoryInjection(
      cartRepository: cartRepository,
      userRepository: userRepository,
      contactRepository: contactRepository,
      establishmentRepository: establishmentRepository,
    );
  }
}
