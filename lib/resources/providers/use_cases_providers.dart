import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/contact/application/send_email.dart';
import 'package:pedido_listo_web/features/delivery_order/application/ask_about_order.dart';
import 'package:pedido_listo_web/features/delivery_order/application/load_order.dart';
import 'package:pedido_listo_web/features/delivery_order/application/make_order.dart';
import 'package:pedido_listo_web/features/delivery_order/application/send_order.dart';
import 'package:pedido_listo_web/features/establishment/application/redirect_on_404.dart';
import 'package:pedido_listo_web/features/shopping_cart/application/load_cart.dart';
import 'package:pedido_listo_web/features/shopping_cart/application/save_cart.dart';
import 'package:pedido_listo_web/features/user/application/load_user.dart';
import 'package:pedido_listo_web/features/user/application/save_user.dart';
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
        RepositoryProvider<LoadCartUseCase>(
          create: (context) => LoadCartUseCase(injection.cartRepository),
        ),
        RepositoryProvider<SaveCartUseCase>(
          create: (context) => SaveCartUseCase(injection.cartRepository),
        ),
        RepositoryProvider<LoadUserUseCase>(
          create: (context) => LoadUserUseCase(injection.userRepository),
        ),
        RepositoryProvider<SaveUserUseCase>(
          create: (context) => SaveUserUseCase(injection.userRepository),
        ),
        RepositoryProvider<SaveUserUseCase>(
          create: (context) => SaveUserUseCase(injection.userRepository),
        ),
        RepositoryProvider<MakeOrderUseCase>(
          create: (context) => MakeOrderUseCase(
            injection.getCurrentUrl,
            injection.orderSummaryRepository,
          ),
        ),
        RepositoryProvider<LoadOrderUseCase>(
          create: (context) =>
              LoadOrderUseCase(injection.orderSummaryRepository),
        ),
        RepositoryProvider<SendOrderUseCase>(
          create: (context) => SendOrderUseCase(injection.launchOrderUrl),
        ),
        RepositoryProvider<RedirectOn404UseCase>(
          create: (context) =>
              RedirectOn404UseCase(injection.establishmentRepository),
        ),
        RepositoryProvider<AskAboutOrderUseCase>(
          create: (context) => AskAboutOrderUseCase(injection.launchOrderUrl),
        ),
      ];
}
