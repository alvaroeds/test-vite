part of 'order_summary_bloc.dart';

@freezed
class OrderSummaryEvent with _$OrderSummaryEvent {
  const factory OrderSummaryEvent.started() = _Started;
  const factory OrderSummaryEvent.sendOrder(String whatsappNumber) = _SendOrder;
  const factory OrderSummaryEvent.askAboutOrder(String whatsappNumber) =
      _AskAboutOrder;
}
