import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/delivery_order/application/ask_about_order.dart';
import 'package:pedido_listo_web/features/delivery_order/application/load_order.dart';
import 'package:pedido_listo_web/features/delivery_order/application/send_order.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/summary_dto.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

part 'order_summary_event.dart';
part 'order_summary_state.dart';
part 'order_summary_bloc.freezed.dart';

class OrderSummaryBloc extends Bloc<OrderSummaryEvent, OrderSummaryState> {
  final LoadOrderUseCase _loadOrderUseCase;
  final SendOrderUseCase _sendOrderUseCase;
  final AskAboutOrderUseCase _askAboutOrderUseCase;

  final String nroOrder;
  final String id;

  OrderSummaryBloc(
    this._loadOrderUseCase,
    this._sendOrderUseCase,
    this._askAboutOrderUseCase, {
    required this.id,
    required this.nroOrder,
  }) : super(OrderSummaryState.initial()) {
    on<_Started>(_onStarted);
    on<_SendOrder>(_onSendOrder);
    on<_AskAboutOrder>(_onAskAboutOrder);

    add(const OrderSummaryEvent.started());
  }

  FutureOr<void> _onStarted(event, Emitter<OrderSummaryState> emit) async {
    final res = await _loadOrderUseCase(
      establishmentId: id,
      nroOrder: nroOrder,
    );

    final status = res.fold(StatusLoad.error, StatusLoad.hasData);

    emit(state.copyWith(statusLoad: status));
  }

  FutureOr<void> _onSendOrder(
      _SendOrder event, Emitter<OrderSummaryState> emit) async {
    await state.statusLoad.whenOrNull(
      hasData: (summary) async {
        emit(state.copyWith(statusSend: none()));

        final res = await _sendOrderUseCase.execute(summary,
            whatsappNumber: event.whatsappNumber);

        emit(state.copyWith(statusSend: some(res.isRight())));
      },
    );
  }

  FutureOr<void> _onAskAboutOrder(
    _AskAboutOrder event,
    Emitter<OrderSummaryState> emit,
  ) {
    state.statusLoad.whenOrNull(
      hasData: (summary) async {
        await _askAboutOrderUseCase.execute(
          summary,
          whatsappNumber: event.whatsappNumber,
        );
      },
    );
  }
}
