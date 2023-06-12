import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/contact/application/send_email.dart';
import 'package:pedido_listo_web/features/establishment/application/redirect_on_404.dart';
import 'package:pedido_listo_web/features/establishment/domain/interface_establishment.dart';
import 'package:pedido_listo_web/features/shopping_cart/application/load_cart.dart';
import 'package:pedido_listo_web/features/shopping_cart/application/save_cart.dart';
import 'package:pedido_listo_web/features/user/application/save_user.dart';
import 'package:pedido_listo_web/features/user/domain/dto/user_dto.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/landing/bloc/know_more_bloc.dart';

class BlocProvidersInjection {
  static List<BlocProvider> list(UserDto userDto) => [
        BlocProvider<KnowMoreBloc>(
            create: (context) =>
                KnowMoreBloc(context.read<SendContactEmailUseCase>())),
        BlocProvider<EstablishmentBloc>(
            create: (context) => EstablishmentBloc(
                context.read<IEstablishmentRepository>(),
                context.read<RedirectOn404UseCase>())),
        BlocProvider<AppCacheBloc>(
            //  lazy: false,
            create: (context) => AppCacheBloc(
                  userDto,
                  context.read<LoadCartUseCase>(),
                  context.read<SaveCartUseCase>(),
                  context.read<SaveUserUseCase>(),
                )),
      ];
}
