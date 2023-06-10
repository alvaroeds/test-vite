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
      child: BlocSelector<KnowMoreBloc, KnowMoreState,
          (bool, Option<ContactResult>)>(
        selector: (state) =>
            (state.isSubmitting, state.contactFailureOrSuccessOption),
        builder: (context, vm) {
          return KnowMoreView(
            key: vm.$2.fold(
                () => null,
                (result) =>
                    result.whenOrNull(succes: (_) => Key(_.toString()))),
            isSubmitting: vm.$1,
            sendContactEmail: (email) => context
                .read<KnowMoreBloc>()
                .add(SendContactEmail(email: email)),
          );
        },
      ),
    );
  }
}
