import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class DetailsBackButton extends StatelessWidget {
  const DetailsBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
          onTap: () => Navigator.of(context).pop(),
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(13, 8, 6, 8),
            child: Icon(
              Icons.arrow_back_ios,
              color: context.primaryColor,
            ),
          )),
    );
  }
}
