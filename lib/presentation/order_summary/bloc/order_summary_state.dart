part of 'order_summary_bloc.dart';

@freezed
class OrderSummaryState with _$OrderSummaryState {
  const factory OrderSummaryState({
    required StatusLoad statusLoad,
    required Option<bool> statusSend,
  }) = _OrderSummaryState;

  factory OrderSummaryState.initial() => const OrderSummaryState(
        statusLoad: StatusLoad.loading(),
        statusSend: None(),
      );
}

@freezed
class StatusLoad with _$StatusLoad {
  const factory StatusLoad.loading() = _Loading;
  const factory StatusLoad.hasData(SummaryDto summary) = _HasData;
  const factory StatusLoad.error(GlobalFailure<dynamic> failure) = _Error;
}
