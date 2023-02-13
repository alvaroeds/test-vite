part of 'know_more_bloc.dart';

@freezed
class KnowMoreEvent with _$KnowMoreEvent {
  const factory KnowMoreEvent.sendContactEmail({required String email}) =
      SendContactEmail;
}
