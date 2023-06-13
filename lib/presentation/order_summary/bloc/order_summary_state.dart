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
  factory OrderSummaryState.fromCache(SummaryDto summary) => OrderSummaryState(
        statusLoad: StatusLoad.data(summary),
        statusSend: const None(),
      );
}

@freezed
class StatusLoad with _$StatusLoad {
  const factory StatusLoad.loading() = _Loading;
  const factory StatusLoad.data(SummaryDto summary) = _HasData;
  const factory StatusLoad.error(GlobalFailure<dynamic> failure) = _Error;

  const StatusLoad._();

  bool get hasData => maybeWhen(orElse: () => false, data: (_) => true);
}
