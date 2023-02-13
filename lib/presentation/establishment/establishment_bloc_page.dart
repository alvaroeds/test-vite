import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/home/cubit/tab_home_cubit.dart';
import 'package:pedido_listo_web/presentation/establishment/home/home_view.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/widgets.dart';
import 'package:pedido_listo_web/presentation/widgets/loading_view.dart';

class EstablishmentBlocPage extends StatelessWidget {
  const EstablishmentBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<EstablishmentBloc>();
    return BlocBuilder<EstablishmentBloc, EstablishmentState>(
      builder: (context, state) {
        return _DisposeWrapper(
          () => bloc.add(const EstablishmentEvent.closed()),
          child: state.when(
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
                floatingActionButton: const ButtonCart(),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerFloat,
              ),
            ),
            initial: () => child(const LoadingView()),
            isError: (_) => child(Text(404.toString())),
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

class _DisposeWrapper extends StatefulWidget {
  final VoidCallback onDispose;
  final Widget child;
  const _DisposeWrapper(this.onDispose, {required this.child});

  @override
  State<_DisposeWrapper> createState() => __DisposeWrapperState();
}

class __DisposeWrapperState extends State<_DisposeWrapper> {
  @override
  void dispose() {
    widget.onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
