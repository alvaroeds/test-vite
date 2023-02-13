part of 'establishment_bloc.dart';

@freezed
class EstablishmentEvent with _$EstablishmentEvent {
  const factory EstablishmentEvent.started(
    String? name,
  ) = _Started;
  const factory EstablishmentEvent.closed() = _Closed;
}
