import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class InputCashField extends StatelessWidget {
  const InputCashField({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeliveryOrderBloc>();
    final payment = context.select<DeliveryOrderBloc, PaymentMethod>(
        (bloc) => bloc.state.paymentMethod);
    if (!payment.isCash) return const SizedBox.shrink();
    final hasError = bloc.state.shoppingCartDto.totalCost > payment.cash;
    final color = hasError && !payment.isInit
        ? const Color(0xffF00000)
        : context.primaryColor;
    const borderStyle = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    return Padding(
      padding: payment.isInit
          ? const EdgeInsets.symmetric(vertical: 10, horizontal: 16)
          : const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 212,
                child: Text(
                  '¿Cuanto va a pagar?',
                  style: context.interBold1Title
                      ?.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              Expanded(
                flex: 131,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: color),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  height: 39,
                  child: TextFormField(
                    initialValue: payment.cashText,
                    maxLength: 7,
                    onChanged: (value) {
                      bloc.add(DeliveryOrderEvent.updateCash(value));
                    },
                    style: context.interBold2Title?.copyWith(
                        color: color,
                        fontSize: 16,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w300),
                    // focusNode: focusNode,

                    //   onFieldSubmitted: onFieldSubmitted,

                    cursorColor: color,
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      counterText: '',
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                      border: borderStyle,
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      fillColor: Colors.white,
//errorText: hasError && !payment.isInit ? ' ' : null,
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(left: 20),
                        width: 25,
                        alignment: Alignment.centerLeft,
                        child: Text('s./',
                            style: context.interBold1Title?.copyWith(
                                color: color,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (!payment.isInit) ...[
            const SizedBox(height: 8),
            if (hasError)
              Text('El monto ingresado es menor al costo del pedido.',
                  textAlign: TextAlign.start,
                  style: context.interBold2Title?.copyWith(
                      color: color, fontSize: 12, fontWeight: FontWeight.w400))
            else
              Row(
                children: [
                  Text('El cambio del monto ingresado es de:',
                      style: context.interBold2Title?.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w400)),
                  const SizedBox(width: 10),
                  Builder(builder: (context) {
                    final totalFinalCost =
                        context.select<DeliveryOrderBloc, double>(
                            (bloc) => bloc.state.totalFinalCost);

                    return Text(
                        'S./ ${(payment.cash - totalFinalCost).toStringAsFixed(2)}',
                        style: context.interBold2Title?.copyWith(
                            color: color,
                            fontWeight: FontWeight.bold,
                            fontSize: 12));
                  }),
                ],
              )
          ]
        ],
      ),
    );
  }
}
