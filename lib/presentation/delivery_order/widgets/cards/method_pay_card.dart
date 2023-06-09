import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/payment.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';

import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/mixin_style.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/inputs/input_cash_field.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

extension Paymentln10 on Payment {
  String toText(BuildContext context) => when(
      cash: () => 'Pago en Efectivo',
      creditCard: () => 'Tarjeta de crédito',
      debitCard: () => 'Tarjeta de débito',
      bankTransfer: () => 'Transferencia',
      newMethod: (method) => method);
}

class MethodPayCards extends StatelessWidget with CardStyle {
  const MethodPayCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        margin: cardMargin,
        decoration: cardStyle,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Seleccione forma de pago',
                  style: context.currentStyle.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 14)),
            ),
            const SizedBox(height: 20),
            const SelectablePayment(),
            const InputCashField(),
          ],
        ));
  }
}

class SelectablePayment extends StatelessWidget {
  const SelectablePayment({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeliveryOrderBloc>();
    return BlocSelector<DeliveryOrderBloc, DeliveryOrderState, PaymentMethod>(
      selector: (state) => state.paymentMethod,
      builder: (context, paymentMethod) {
        final isSelectableExpanded = context.select<DeliveryOrderBloc, bool>(
            (bloc) => bloc.state.isSelectableExpanded);

        final color = paymentMethod.method.isSome() && !isSelectableExpanded
            ? context.primaryColor
            : Colors.grey;

        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: color, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.fromLTRB(20, 2.5, 20, 2.5),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableTitle(
                    isExpanded: isSelectableExpanded,
                    iSelected: paymentMethod.method.isSome(),
                    text: paymentMethod.method
                        .fold(() => 'Método de pago', (e) => e.toText(context)),
                    onTap: () {
                      bloc.add(const DeliveryOrderEvent.changeSelectable());
                    }),
                if (isSelectableExpanded)
                  ...bloc.state.establishmentDto.paymentMethods
                      .where((element) => paymentMethod.method
                          .fold(() => true, (pay) => element != pay))
                      .map((pay) => SelectableOption(
                            text: pay.toText(context),
                            onTap: () {
                              bloc.add(DeliveryOrderEvent.updatePaymentMethod(
                                  pay, pay.toText(context)));
                            },
                          )),
              ]),
        );
      },
    );
  }
}

class SelectableTitle extends StatelessWidget {
  final bool iSelected;
  final bool isExpanded;
  final String text;
  final VoidCallback onTap;
  const SelectableTitle(
      {required this.isExpanded,
      required this.iSelected,
      required this.text,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.5, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: context.interBold1Title?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: iSelected
                      ? context.primaryColor
                      : const Color(0xff878F9B)),
            ),
            Icon(
                isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: iSelected && !isExpanded
                    ? context.primaryColor
                    : const Color(0xff111828),
                size: 30)
          ],
        ),
      ),
    );
  }
}

class SelectableOption extends StatelessWidget {
  final String text;

  final VoidCallback onTap;

  const SelectableOption({
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.5, horizontal: 10),
        child: Row(
          children: [
            Text(
              text,
              style: context.interBold1Title?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff878F9B)),
            ),
          ],
        ),
      ),
    );
  }
}
