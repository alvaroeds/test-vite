import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/home/cubit/tab_home_cubit.dart';
import 'package:pedido_listo_web/presentation/establishment/home/home_view.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/widgets.dart';
import 'package:pedido_listo_web/presentation/widgets/cycle_wrapper_bloc.dart';
import 'package:pedido_listo_web/presentation/widgets/loading_view.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';

class EstablishmentBlocPage extends StatelessWidget {
  const EstablishmentBlocPage(
      {required this.subDomainIsNone, super.key, this.idUrl});

  final String? idUrl;
  final bool subDomainIsNone;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<EstablishmentBloc>();
    return BlocConsumer<EstablishmentBloc, EstablishmentState>(
      listenWhen: (previous, state) {
        return state.maybeWhen(isError: (_) => true, orElse: () => false);
      },
      listener: (context, state) {
        // Si no encuentra lo regresa
        state.whenOrNull(isError: (_) => context.goNamed(RouterHome.name));
      },
      builder: (context, state) {
        return CycleWrapper(
          // key: Key(idUrl.toString()),
          onDispose: () {
            if (!kIsWeb || subDomainIsNone) {
              bloc.add(EstablishmentEvent.closeStream());
            }
          },

          /*  onInit: () =>
              context.read<AppCacheBloc>().add(AppCacheEvent.loadCart(idUrl)), */
          child: state.maybeWhen(
            hasData: (establishment) => BlocProvider(
              create: (context) => TabHomeCubit(),
              child: Scaffold(
                drawer:
                    DrawerEstablishment(categories: establishment.categories),
                body: HomeView(
                  //  key: Key(state.toString()),
                  establishment: establishment,
                  //  initialIndex: state.index,
                ),
                floatingActionButton: ButtonCart(
                  idUrl: establishment.idUrl,
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerFloat,
              ),
            ),
            orElse: () => child(const LoadingView()),
          ),
        );
      },
    );
  }

  Widget child(Widget t) => Scaffold(
        body: Center(
          child: t,
        ),
      );
}
