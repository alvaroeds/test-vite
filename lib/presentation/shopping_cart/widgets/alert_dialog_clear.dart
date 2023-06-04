import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/presentation/widgets/buttons/elevated_button_app.dart';
import 'package:pedido_listo_web/presentation/widgets/buttons/outline_button_app.dart';

import 'package:pedido_listo_web/presentation/shopping_cart/bloc/shopping_car_bloc.dart';

class AlertDialogClearCart extends StatelessWidget {
  static Future<void> show(BuildContext context) async {
    void onAccept() => context.read<ShoppingCartBloc>().add(
          const ShoppingCartEvent.clearCart(),
        );

    await showDialog<void>(
      context: context,
      builder: (_) => AlertDialogClearCart(onAccept: onAccept),
    );
  }

  final void Function() onAccept;

  const AlertDialogClearCart({required this.onAccept, super.key});

  static const double actionButtonWidth = 125;
  static const double actionButtonHeight = 46;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        width: 400,
        padding: const EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '¿Estás seguro de que\n deseas vaciar tu canasta?',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1D252C),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 3),
                const _CancelButton(
                  height: actionButtonHeight,
                  width: actionButtonWidth,
                ),
                const Spacer(flex: 2),
                _AcceptButton(
                  onAccept: () {
                    onAccept();
                    Navigator.pop(context);
                  },
                  height: actionButtonHeight,
                  width: actionButtonWidth,
                ),
                const Spacer(flex: 3),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _CancelButton extends StatelessWidget {
  final double width;
  final double height;
  const _CancelButton({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return OutlineButtonApp(
      width: width,
      height: height,
      title: 'Cancelar',
      onPressed: () => Navigator.pop(context),
    );
  }
}

class _AcceptButton extends StatelessWidget {
  final double width;
  final double height;
  final void Function() onAccept;
  const _AcceptButton(
      {required this.width, required this.height, required this.onAccept});

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonApp(
      width: width,
      height: height,
      title: 'Aceptar',
      onPressed: onAccept,
    );
  }
}
