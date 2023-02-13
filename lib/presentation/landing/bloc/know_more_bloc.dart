import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/contact/application/send_email.dart';
import 'package:pedido_listo_web/features/contact/domain/contact_result.dart';

part 'know_more_event.dart';
part 'know_more_state.dart';
part 'know_more_bloc.freezed.dart';

class KnowMoreBloc extends Bloc<KnowMoreEvent, KnowMoreState> {
  final SendContactEmailUseCase sendEmail;

  KnowMoreBloc(this.sendEmail) : super(KnowMoreState.initial()) {
    on<SendContactEmail>((event, emit) async {
      emit(state.copyWith(
        isSubmitting: true,
        contactFailureOrSuccessOption: none(),
      ));

      final result = await sendEmail.execute(event.email);

      emit(state.copyWith(
        isSubmitting: false,
        contactFailureOrSuccessOption: some(result),
      ));
    });
  }
}
