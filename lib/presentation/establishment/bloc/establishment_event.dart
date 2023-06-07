part of 'establishment_bloc.dart';

@freezed
class EstablishmentEvent with _$EstablishmentEvent {
  const factory EstablishmentEvent.started(String? name) = _Started;
  const factory EstablishmentEvent.streamCall(
      StreamAction action, String? name) = _StreamCall;

  factory EstablishmentEvent.closeStream() =>
      const EstablishmentEvent.streamCall(StreamAction.close, null);
}

enum StreamAction { open, close }
