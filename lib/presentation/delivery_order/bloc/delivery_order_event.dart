part of 'delivery_order_bloc.dart';

@freezed
class DeliveryOrderEvent with _$DeliveryOrderEvent {
  const factory DeliveryOrderEvent.updateName(String contactName) = _UpdateName;
  const factory DeliveryOrderEvent.updatePhone(String contactPhone) =
      _UpdatePhone;

  const factory DeliveryOrderEvent.updateAdditionalDetail(
      String additionalDetail) = _UpdateAdditionalDetail;
  const factory DeliveryOrderEvent.updateAddress(AddressDto? address) =
      _UpdateAddress;
  const factory DeliveryOrderEvent.changeCurrentAddress(String address) =
      _ChangeCurrentAddress;

  const factory DeliveryOrderEvent.updateService(Service service) =
      _UpdateService;

  const factory DeliveryOrderEvent.createOrder() = _CreateOrder;

  const factory DeliveryOrderEvent.closeSelectable() = _CloseSelectable;
  const factory DeliveryOrderEvent.changeSelectable() = _ChangeSelectable;

  const factory DeliveryOrderEvent.updatePaymentMethod(
      Payment payment, String namePayment) = _UpdatePaymentMethod;

  const factory DeliveryOrderEvent.updateCash(String cash) = _UpdateCash;
}
