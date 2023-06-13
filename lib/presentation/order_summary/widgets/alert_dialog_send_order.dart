import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/order_summary/bloc/order_summary_bloc.dart';
import 'package:pedido_listo_web/presentation/order_summary/widgets/paints/alert_icon.dart';
import 'package:pedido_listo_web/presentation/widgets/buttons/elevated_button_app.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class AlertDialogSendOrder extends StatelessWidget {
  static Future<void> show(BuildContext context) async {
    final bloc = context.read<OrderSummaryBloc>();

    void onAccept() => context.read<EstablishmentBloc>().state.whenOrNull(
          hasData: (establishment) => bloc.add(
            OrderSummaryEvent.sendOrder(establishment.whatsappNumber),
          ),
        );

    await showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (_) => AlertDialogSendOrder(
        onAccept: onAccept,
        bloc: bloc,
      ),
    );
  }

  final OrderSummaryBloc bloc;

  final void Function() onAccept;

  const AlertDialogSendOrder(
      {required this.onAccept, required this.bloc, super.key});

  static const double actionButtonWidth = 125;
  static const double actionButtonHeight = 46;

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderSummaryBloc, OrderSummaryState>(
      bloc: bloc,
      listener: (_, state) {
        state.statusSend.forEach(
          (isSucces) {
            if (isSucces) {
              context
                  .read<AppCacheBloc>()
                  .add(AppCacheEvent.removeOrder(bloc.nroOrder));
              Navigator.of(context).pop();
            }
          },
        );
      },
      child: AlertDialog(
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
                'Acción necesaria',
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
              CustomPaint(
                size: const Size(25, 25 * 3.12),
                painter: AlertIconCustomPainter(),
              ),
              const SizedBox(height: 20),
              Text(
                'Enviar confirmación por\nwhatsapp',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    color: Color(0xff1D252C),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 3),
                  Expanded(
                    flex: 29,
                    child: _AcceptButton(
                      onAccept: onAccept,
                      height: actionButtonHeight,
                      width: actionButtonWidth,
                    ),
                  ),
                  const Spacer(flex: 3),
                ],
              )
            ],
          ),
        ),
      ),
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
      icon: R.ASSETS_SVG_WHATSAPP_SVG.toSvg(),
      height: height,
      title: 'Enviar',
      onPressed: onAccept,
    );
  }
}
