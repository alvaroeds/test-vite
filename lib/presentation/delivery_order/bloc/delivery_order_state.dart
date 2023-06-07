part of 'delivery_order_bloc.dart';

@freezed
class DeliveryOrderState with _$DeliveryOrderState {
  const factory DeliveryOrderState({
    required Option<AddressDto> address,
    required PaymentMethod paymentMethod,
    @Default('') String contactName,
    @Default('') String contactPhone,
    @Default(false) bool isSelectableExpanded,
    @Default({}) Map<String, String> additionalDetail,
    @Default(Service.takeaway()) Service service,
  }) = _DeliveryOrderState;
}

@freezed
class Service with _$Service {
  const factory Service.takeaway() = _Takeaway;
  const factory Service.delivery() = _Delivery;

  const Service._();

  bool get isTakeaway => this is _Takeaway;
  bool get isDelivery => this is _Delivery;
}

@freezed
class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({
    required Option<Payment> method,
    @Default('') String paymentMethod,
    @Default(0) double cash,
    @Default(true) bool isInit,
  }) = _PaymentMethod;

  const PaymentMethod._();

  String get cashText => isInit ? '' : cash.toString();

  bool get isCash => method.fold(() => false, (method) => method.isCash);

  factory PaymentMethod.initial() => PaymentMethod(
        method: none(),
      );
}
