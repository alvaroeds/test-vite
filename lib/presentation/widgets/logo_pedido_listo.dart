import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/const/resource.dart';

class LogoPedidoListo extends StatelessWidget {
  const LogoPedidoListo({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go('/'),
      child: SizedBox(
        width: 93.64,
        height: 40,
        child: Image.asset(R.ASSETS_LOGO_JPEG),
      ),
    );
  }
}
