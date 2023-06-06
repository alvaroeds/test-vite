import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 154,
      height: 56,
      child: ElevatedButton(
          onPressed: () {
            context.goNamed(RouterEstablishment.name,
                pathParameters: {RouterEstablishment.firtsPath: 'lojusto'});
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: context.currentTheme.primaryColor,
          ),
          child: Text(
            'Crear cuenta',
            style: context.buttonCreateLandingFont,
          )),
    );
  }
}
