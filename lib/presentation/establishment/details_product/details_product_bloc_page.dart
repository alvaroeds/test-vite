import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/views/details_product_view.dart';
import 'package:pedido_listo_web/presentation/widgets/loading_view.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';

class DetailsProductPage extends StatelessWidget {
  final String uuid;
  const DetailsProductPage({
    required this.uuid,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<EstablishmentBloc, EstablishmentState>(
        listenWhen: (previous, state) {
          final notFounded = state.maybeWhen(
            hasData: (establishment) => !establishment.hasProduct(uuid),
            orElse: () => false,
          );
          return notFounded;
        },
        listener: (context, state) {
          // Si no encuentra lo regresa
          state.whenOrNull(
            hasData: (establishment) {
              context.goNamed(
                RouterEstablishment.name,
                pathParameters: {
                  RouterEstablishment.firtsPath: establishment.idUrl
                },
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
              hasData: (establishment) {
                final foundProduct = establishment.findProduct(uuid);

                return foundProduct.fold(
                    LoadingView.new,
                    (product) => DetailsProductView(
                          product: product,
                          modifiers: Modifiers(
                            chooseForAmount: product.getChooseForAmountList(
                                establishment.modifiers.chooseForAmount),
                            oneSelection: product.getOneSelectionList(
                                establishment.modifiers.oneSelection),
                            multipleSelection: product.getMultipleSelectionList(
                                establishment.modifiers.multipleSelection),
                          ),
                        ));
              },
              orElse: LoadingView.new);
        },
      ),
    );
  }
}
