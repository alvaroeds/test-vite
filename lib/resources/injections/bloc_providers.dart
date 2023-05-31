import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/contact/application/send_email.dart';
import 'package:pedido_listo_web/features/establishment/domain/interface_establishment.dart';
import 'package:pedido_listo_web/presentation/app/bloc/cart_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/landing/bloc/know_more_bloc.dart';

class BlocProvidersInjection {
  static List<BlocProvider> list() => [
        BlocProvider<KnowMoreBloc>(
            create: (context) =>
                KnowMoreBloc(context.read<SendContactEmailUseCase>())),
        BlocProvider<EstablishmentBloc>(
            create: (context) =>
                EstablishmentBloc(context.read<IEstablishmentRepository>())),
        BlocProvider<AppCacheBloc>(
            //  lazy: false,
            create: (context) => AppCacheBloc()),
      ];
}
