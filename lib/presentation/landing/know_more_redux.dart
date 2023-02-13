/* import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:pedido_listo_web/features/contact/domain/contact_result.dart';
import 'package:pedido_listo_web/presentation/landing/views/know_more_view.dart';
import 'package:pedido_listo_web/presentation/landing/views/show_errors.dart';
import 'package:pedido_listo_web/redux/core/app_state.dart';
import 'package:pedido_listo_web/redux/features/contact/actions.dart';
import 'package:redux/redux.dart';

class KnowMoreRedux extends StatelessWidget {
  const KnowMoreRedux({super.key});

  @override
  Widget build(BuildContext context) {
    final showerMessage = ShowerContactMessagesSnackBar(context);
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.contactFailureOrSuccessOption.forEach((failuresOrSuccess) {
          failuresOrSuccess.when(
            formError: showerMessage.showFormError,
            notSucces: showerMessage.showErrorNotSucces,
            succes: showerMessage.showSuccessRecover,
          );
        });
      },
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        return KnowMoreView(
          key: vm.contactFailureOrSuccessOption.fold(() => null, (a) => a.whenOrNull(succes: (_) => Key(_.toString()))),
          isSubmitting: vm.isSubmitting,
          sendContactEmail: vm.sendContactEmail,
        );
      },
    );
  }
}

@immutable
class _ViewModel {
  final bool isSubmitting;
  final void Function(String) sendContactEmail;
  final Option<ContactResult> contactFailureOrSuccessOption;

  const _ViewModel({
    required this.isSubmitting,
    required this.sendContactEmail,
    required this.contactFailureOrSuccessOption,
  });

  factory _ViewModel.fromStore(Store<AppState> store) {
    return _ViewModel(
      isSubmitting: store.state.contacthFormState.isSubmitting,
      sendContactEmail: (email) => store.dispatch(SendContactEmailAction(email: email)),
      contactFailureOrSuccessOption: store.state.contacthFormState.contactFailureOrSuccessOption,
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
  int get hashCode => contactFailureOrSuccessOption.hashCode ^ isSubmitting.hashCode;
}
 */
