import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/home/cubit/tab_home_cubit.dart';
import 'package:pedido_listo_web/presentation/establishment/home/home_view.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/widgets.dart';
import 'package:pedido_listo_web/presentation/widgets/loading_view.dart';
import 'package:pedido_listo_web/resources/router/config_router.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;

class EstablishmentBlocPage extends StatelessWidget {
  const EstablishmentBlocPage({super.key, this.idUrl});
  final String? idUrl;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<EstablishmentBloc>();
    return BlocConsumer<EstablishmentBloc, EstablishmentState>(
      listenWhen: (previous, state) {
        return state.maybeWhen(isError: (_) => true, orElse: () => false);
      },
      listener: (context, state) {
        // Si no encuentra lo regresa

        state.whenOrNull(isError: (_) {
          final currentUri = Uri.parse(html.window.location.href);
          currentUri.subDomain.fold(() {
            context.goNamed(RouterHome.name);
          }, (subdomain) {
            final newUri = currentUri.host.replaceFirst('$subdomain.', '');
            return launchUrl(Uri.parse(currentUri.scheme + newUri));
          });
        });
      },
      builder: (context, state) {
        return CycleWrapper(
          // key: Key(idUrl.toString()),
          onDispose: () => bloc.add(const EstablishmentEvent.closed()),
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
