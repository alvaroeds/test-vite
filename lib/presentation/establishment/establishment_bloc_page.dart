import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/app/bloc/cart_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/home/cubit/tab_home_cubit.dart';
import 'package:pedido_listo_web/presentation/establishment/home/home_view.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/widgets.dart';
import 'package:pedido_listo_web/presentation/widgets/loading_view.dart';

class EstablishmentBlocPage extends StatelessWidget {
  const EstablishmentBlocPage({super.key, this.idUrl});
  final String? idUrl;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<EstablishmentBloc>();
    return BlocBuilder<EstablishmentBloc, EstablishmentState>(
      builder: (context, state) {
        return CycleWrapper(
          onDispose: () => bloc.add(const EstablishmentEvent.closed()),
          onInit: () =>
              context.read<AppCacheBloc>().add(AppCacheEvent.loadCart(idUrl)),
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
                floatingActionButton: ButtonCart(
                  idUrl: establishment.idUrl,
                ),
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

class CycleWrapper extends StatefulWidget {
  final VoidCallback? onDispose;
  final VoidCallback? onInit;
  final Widget child;
  const CycleWrapper(
      {required this.child, super.key, this.onDispose, this.onInit});

  @override
  State<CycleWrapper> createState() => _CycleWrapperState();
}

class _CycleWrapperState extends State<CycleWrapper> {
  @override
  void initState() {
    widget.onInit?.call();
    super.initState();
  }

  @override
  void dispose() {
    widget.onDispose?.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
