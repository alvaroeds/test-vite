import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/inputs/inputs_contact_field.dart';
import 'package:pedido_listo_web/resources/utils/fonts.dart';

class TitleFormContact extends StatelessWidget {
  const TitleFormContact({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Text(
        'Informacion de contacto',
        style: context.interBold1Title
            ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class FormContactUser extends StatelessWidget {
  const FormContactUser({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeliveryOrderBloc, DeliveryOrderState>(
      listenWhen: (previous, current) =>
          previous.contactName != current.contactName ||
          previous.contactPhone != current.contactPhone,
      listener: (context, state) =>
          context.read<AppCacheBloc>().add(AppCacheEvent.saveUser(
                name: state.contactName,
                phone: state.contactPhone,
              )),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          InputNameField(),
          SizedBox(height: 26),
          InputPhoneField(),
        ],
      ),
    );
  }
}
