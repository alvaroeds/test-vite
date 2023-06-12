import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/delivery_order/application/load_order.dart';
import 'package:pedido_listo_web/features/delivery_order/application/send_order.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/order_summary/bloc/order_summary_bloc.dart';
import 'package:pedido_listo_web/presentation/order_summary/views/data_view.dart';
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
                  nroOrder: nroOrder,
                  id: establishment.id.toString(),
                ),
                child: BlocListener<OrderSummaryBloc, OrderSummaryState>(
                  listenWhen: (previous, current) =>
                      previous.statusLoad != current.statusLoad,
                  listener: (context, state) {
                    state.statusLoad.whenOrNull(
                      hasData: (_) {
                        final ordersAvailables = context
                            .read<AppCacheBloc>()
                            .state
                            .user
                            .ordersAvailables;

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
                            loading: LoadingView.new,
                            hasData: DataView.new,
                            error: (failure) =>
                                Center(child: Text(failure.toString())));
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
