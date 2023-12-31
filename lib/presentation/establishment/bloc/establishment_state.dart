part of 'establishment_bloc.dart';

@freezed
class EstablishmentState with _$EstablishmentState {
  const factory EstablishmentState.initial() = _Initial;
  const factory EstablishmentState.hasData(EstablishmentDto establishment) =
      _Data;
  const factory EstablishmentState.isError(GlobalFailure<dynamic> failure) =
      _Error;

  const EstablishmentState._();

  bool get isInitial => this is _Initial;
  bool get hasData => this is _Data;
}
