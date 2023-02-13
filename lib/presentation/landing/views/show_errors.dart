import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/show_snack_bar.dart';
import 'package:pedido_listo_web/resources/theme/colors_app.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

class ShowerContactMessagesSnackBar {
  final BuildContext context;

  ShowerContactMessagesSnackBar(this.context);

  void showFormError(ValueFailure<String> failure) {
    showSnackBar(
      failure.when(
        characterLimitExceeded: (_) => 'Correo muy grande',
        emptyOrNullCharacters: (_) => 'Ingrese un correo',
        invalidFormat: (_) => 'Correo inválido',
      ),
      context,
      icon: Icons.format_align_center,
    );
  }

  void showErrorNotSucces(GlobalFailure<dynamic> failure) {
    showSnackBar(
      failure.when(
        serverError: (_) => 'Hubo un error en el servidor',
        notConnection: () => 'Verifique su conexión',
        timeOutExceeded: () => 'Tiempo de espera excedido',
        internalError: (_, __) => 'App desactualizada',
      ),
      context,
      icon: Icons.format_align_center,
    );
  }

  void showSuccessRecover(dynamic unit) {
    showSnackBar(
      'Gracias por su interés',
      context,
      icon: Icons.check,
      color: ColorsApp.primaryColorLight,
    );
  }
}
