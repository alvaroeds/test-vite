import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class ResponsiveSeparator extends StatelessWidget {
  const ResponsiveSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth > 400 ? 30 : 0,
    );
  }
}
