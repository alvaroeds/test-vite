part of 'know_more_bloc.dart';

@freezed
class KnowMoreState with _$KnowMoreState {
  const factory KnowMoreState({
    required bool isSubmitting,
    required Option<ContactResult> contactFailureOrSuccessOption,
  }) = _KnowMoreState;

  factory KnowMoreState.initial() => const KnowMoreState(
        isSubmitting: false,
        contactFailureOrSuccessOption: None(),
      );
}
