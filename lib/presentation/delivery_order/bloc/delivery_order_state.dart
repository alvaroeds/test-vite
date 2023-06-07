part of 'delivery_order_bloc.dart';

@freezed
class DeliveryOrderState with _$DeliveryOrderState {
  const factory DeliveryOrderState({
    required Option<AddressDto> address,
    @Default('') String contactName,
    @Default('') String contactPhone,
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
