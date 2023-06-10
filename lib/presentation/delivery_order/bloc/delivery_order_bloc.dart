import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/payment.dart';
import 'package:pedido_listo_web/features/delivery_order/application/make_order.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';
import 'package:pedido_listo_web/features/user/domain/dto/address_dto.dart';
import 'package:pedido_listo_web/features/user/domain/dto/user_dto.dart';
part 'delivery_order_event.dart';
part 'delivery_order_state.dart';
part 'delivery_order_bloc.freezed.dart';

class DeliveryOrderBloc extends Bloc<DeliveryOrderEvent, DeliveryOrderState> {
  final MakeOrderUseCase _makeOrderUseCase;

  DeliveryOrderBloc(
    this._makeOrderUseCase, {
    required ShoppingCartDto shoppingCartDto,
    required EstablishmentDto establishmentDto,
    required UserDto userDto,
  }) : super(DeliveryOrderState(
          contactName: userDto.name,
          contactPhone: userDto.phone,
          establishmentDto: establishmentDto,
          shoppingCartDto: shoppingCartDto,
          paymentMethod: PaymentMethod.initial(),
          address: optionOf(userDto.addresses.firstOrNull),
        )) {
    on<_UpdateName>(_updateContactName);
    on<_UpdatePhone>(_updateContactPhone);
    on<_UpdateService>(_updateServices);
    on<_UpdateAddress>(_updateAddress);
    on<_CreateOrder>(_createOrder);
    on<_UpdateAdditionalDetail>(_updateAdditionalDetail);
    on<_UpdatePaymentMethod>(_updatePaymentMethod);
    on<_ChangeSelectable>(_changeSelectable);
    on<_CloseSelectable>(_closeSelectable);
    on<_UpdateCash>(_updateCash);
  }

  FutureOr<void> _changeSelectable(
      _ChangeSelectable event, Emitter<DeliveryOrderState> emit) {
    emit(state.copyWith(isSelectableExpanded: !state.isSelectableExpanded));
  }

  FutureOr<void> _closeSelectable(
      _CloseSelectable event, Emitter<DeliveryOrderState> emit) {
    emit(state.copyWith(isSelectableExpanded: false));
  }

  FutureOr<void> _updatePaymentMethod(
      _UpdatePaymentMethod event, Emitter<DeliveryOrderState> emit) {
    emit(state.copyWith(
        isSelectableExpanded: false,
        paymentMethod: state.paymentMethod.copyWith(
            method: some(event.payment), paymentMethod: event.namePayment)));
  }

  FutureOr<void> _updateContactPhone(
      _UpdatePhone event, Emitter<DeliveryOrderState> emit) {
    emit(state.copyWith(contactPhone: event.contactPhone));
  }

  FutureOr<void> _updateContactName(
      _UpdateName event, Emitter<DeliveryOrderState> emit) {
    emit(state.copyWith(contactName: event.contactName));
  }

  FutureOr<void> _updateServices(
    _UpdateService event,
    Emitter<DeliveryOrderState> emit,
  ) {
    emit(state.copyWith(service: event.service));
  }

  FutureOr<void> _updateAddress(
    _UpdateAddress event,
    Emitter<DeliveryOrderState> emit,
  ) {
    emit(state.copyWith(address: optionOf(event.address)));
  }

  FutureOr<void> _updateAdditionalDetail(
    _UpdateAdditionalDetail event,
    Emitter<DeliveryOrderState> emit,
  ) {
    state.address.forEach((element) {
      emit(state.copyWith(additionalDetail: {
        ...state.additionalDetail,
        element.uuid: event.additionalDetail,
      }));
    });
  }

  FutureOr<void> _createOrder(
    _CreateOrder event,
    Emitter<DeliveryOrderState> emit,
  ) {
    _makeOrderUseCase.execute(state.shoppingCartDto, state.establishmentDto,
        contactName: state.contactName,
        contactPhone: state.contactPhone,
        paymentMethod: state.paymentMethod.paymentMethod,
        cash: state.paymentMethod.isCash ? state.paymentMethod.cash : 0,
        address: state.service.isTakeaway
            ? none()
            : state.address.map((a) => a.reference),
        additionalDetail: state.additionalDetail[
                state.address.map((a) => a.uuid).getOrElse(() => '')] ??
            '');
  }

  FutureOr<void> _updateCash(
      _UpdateCash event, Emitter<DeliveryOrderState> emit) {
    emit(state.copyWith(
        paymentMethod: state.paymentMethod
            .copyWith(cash: double.tryParse(event.cash) ?? 0, isInit: false)));
  }
}
