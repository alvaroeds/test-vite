import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/delivery_order/application/ask_about_order.dart';
import 'package:pedido_listo_web/features/delivery_order/application/load_order.dart';
import 'package:pedido_listo_web/features/delivery_order/application/send_order.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/order_summary/bloc/order_summary_bloc.dart';
import 'package:pedido_listo_web/presentation/order_summary/views/data_view.dart';
import 'package:pedido_listo_web/presentation/order_summary/views/error_view.dart';
import 'package:pedido_listo_web/presentation/order_summary/views/loading_view.dart';
import 'package:pedido_listo_web/presentation/order_summary/widgets/alert_dialog_send_order.dart';
import 'package:pedido_listo_web/presentation/order_summary/widgets/scaffold_summary.dart';
import 'package:pedido_listo_web/presentation/widgets/loading_view.dart';

class OrderSummaryBlocPage extends StatelessWidget {
  final String urlId;
  final String nroOrder;

  const OrderSummaryBlocPage({
    required this.urlId,
    required this.nroOrder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EstablishmentBloc, EstablishmentState>(
      builder: (context, state) {
        return state.maybeWhen(
            hasData: (establishment) {
              return BlocProvider(
                create: (context) => OrderSummaryBloc(
                  context.read<LoadOrderUseCase>(),
                  context.read<SendOrderUseCase>(),
                  context.read<AskAboutOrderUseCase>(),
                  context.read<AppCacheBloc>().state.summary,
                  nroOrder: nroOrder,
                  id: establishment.id.toString(),
                ),
                child: BlocListener<OrderSummaryBloc, OrderSummaryState>(
                  listenWhen: (previous, current) =>
                      previous.statusLoad != current.statusLoad,
                  listener: (context, state) {
                    state.statusLoad.whenOrNull(
                      data: (summary) {
                        final bloc = context.read<AppCacheBloc>();
                        final ordersAvailables =
                            bloc.state.user.ordersAvailables;
                        bloc.add(AppCacheEvent.updateCurrentSummary(
                            summary: summary));

                        if (ordersAvailables.contains(nroOrder)) {
                          return AlertDialogSendOrder.show(context);
                        }
                      },
                    );
                  },
                  child: ScaffoldSummary(
                    child: BlocSelector<OrderSummaryBloc, OrderSummaryState,
                        StatusLoad>(
                      selector: (state) => state.statusLoad,
                      builder: (context, status) {
                        return status.when(
                          data: DataView.new,
                          loading: SummaryLoadingView.new,
                          error: SummaryErrorView.new,
                        );
                      },
                    ),
                  ),
                ),
              );
            },
            orElse: LoadingView.new);
      },
    );
  }
}
