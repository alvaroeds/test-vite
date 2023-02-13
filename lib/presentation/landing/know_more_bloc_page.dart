import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pedido_listo_web/features/contact/domain/contact_result.dart';
import 'package:pedido_listo_web/presentation/landing/bloc/know_more_bloc.dart';
import 'package:pedido_listo_web/presentation/landing/views/know_more_view.dart';
import 'package:pedido_listo_web/presentation/landing/views/show_errors.dart';

class KnowMoreBlocPage extends StatelessWidget {
  const KnowMoreBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    final showerMessage = ShowerContactMessagesSnackBar(context);
    return BlocListener<KnowMoreBloc, KnowMoreState>(
      listener: (context, state) {
        state.contactFailureOrSuccessOption.forEach((failuresOrSuccess) {
          failuresOrSuccess.when(
            formError: showerMessage.showFormError,
            notSucces: showerMessage.showErrorNotSucces,
            succes: showerMessage.showSuccessRecover,
          );
        });
      },
      child: BlocSelector<KnowMoreBloc, KnowMoreState, _ViewModel>(
        selector: _ViewModel.fromStore,
        builder: (context, vm) {
          return KnowMoreView(
            key: vm.contactFailureOrSuccessOption.fold(() => null,
                (a) => a.whenOrNull(succes: (_) => Key(_.toString()))),
            isSubmitting: vm.isSubmitting,
            sendContactEmail: (email) => context
                .read<KnowMoreBloc>()
                .add(SendContactEmail(email: email)),
          );
        },
      ),
    );
  }
}

@immutable
class _ViewModel {
  final bool isSubmitting;

  final Option<ContactResult> contactFailureOrSuccessOption;

  const _ViewModel({
    required this.isSubmitting,
    required this.contactFailureOrSuccessOption,
  });

  factory _ViewModel.fromStore(KnowMoreState state) {
    return _ViewModel(
      isSubmitting: state.isSubmitting,
      contactFailureOrSuccessOption: state.contactFailureOrSuccessOption,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ViewModel &&
          runtimeType == other.runtimeType &&
          isSubmitting == other.isSubmitting &&
          contactFailureOrSuccessOption == other.contactFailureOrSuccessOption;
  @override
  int get hashCode =>
      contactFailureOrSuccessOption.hashCode ^ isSubmitting.hashCode;
}
