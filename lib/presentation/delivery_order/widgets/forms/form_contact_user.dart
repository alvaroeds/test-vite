import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';

class FormContactUser extends StatelessWidget {
  const FormContactUser({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeliveryOrderBloc>();

    return BlocListener<DeliveryOrderBloc, DeliveryOrderState>(
      listenWhen: (previous, current) =>
          previous.contactName != current.contactName ||
          previous.contactPhone != current.contactPhone,
      listener: (context, state) =>
          context.read<AppCacheBloc>().add(AppCacheEvent.saveUser(
                name: state.contactName,
                phone: state.contactPhone,
              )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text('Nombre'),
          TextFormField(
            maxLength: 100,
            textCapitalization: TextCapitalization.words,
            decoration: const InputDecoration(
                hintStyle: TextStyle(color: Color(0xff3e1e3e6)),
                hintText: 'Ingrese su nombre acá',
                counterText: ''),
            initialValue: bloc.state.contactName,
            onChanged: (value) =>
                bloc.add(DeliveryOrderEvent.updateName(value)),
          ),
          const SizedBox(height: 26),
          const Text('Número de telefono'),
          TextFormField(
            maxLength: 14,
            decoration: const InputDecoration(
                hintStyle: TextStyle(color: Color(0xff3e1e3e6)),
                hintText: '+59-9-256-5333',
                counterText: ''),
            initialValue: bloc.state.contactPhone,
            onChanged: (value) =>
                bloc.add(DeliveryOrderEvent.updatePhone(value)),
          ),
        ],
      ),
    );
  }
}
