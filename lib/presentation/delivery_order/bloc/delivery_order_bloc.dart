import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/delivery_order/make_order.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';
import 'package:pedido_listo_web/features/user/domain/dto/address_dto.dart';
import 'package:pedido_listo_web/features/user/domain/dto/user_dto.dart';

part 'delivery_order_event.dart';
part 'delivery_order_state.dart';
part 'delivery_order_bloc.freezed.dart';

class DeliveryOrderBloc extends Bloc<DeliveryOrderEvent, DeliveryOrderState> {
  final ShoppingCartDto shoppingCartDto;
  final EstablishmentDto establishmentDto;

  DeliveryOrderBloc({
    required this.shoppingCartDto,
    required this.establishmentDto,
    required UserDto userDto,
  }) : super(DeliveryOrderState(
          contactName: userDto.name,
          contactPhone: userDto.phone,
          address: optionOf(userDto.addresses.firstOrNull),
        )) {
    on<_UpdateName>(_updateContactName);
    on<_UpdatePhone>(_updateContactPhone);
    on<_UpdateService>(_updateServices);
    on<_UpdateAddress>(_updateAddress);
    on<_CreateOrder>(_createOrder);
    on<_UpdateAdditionalDetail>(_updateAdditionalDetail);
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
    MakeOrderUseCase.execute(shoppingCartDto, establishmentDto,
        contactName: state.contactName,
        contactPhone: state.contactPhone,
        address: state.service.isTakeaway
            ? none()
            : state.address.map((a) => a.reference),
        additionalDetail: state.additionalDetail[
                state.address.map((a) => a.uuid).getOrElse(() => '')] ??
            '');
  }
}
