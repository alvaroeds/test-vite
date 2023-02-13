import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class CustomSelectionHeader extends StatelessWidget {
  const CustomSelectionHeader({
    required this.name,
    required this.description,
    required this.isRequired,
    required this.isReady,
    super.key,
  });

  final String name;
  final String description;
  final bool isRequired;
  final bool isReady;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: context.defaultTitle?.getStyle(
                  color: const Color(0xff40454D),
                  weight: FontWeight.w700,
                  size: 18,
                ),
              ),
              Text(
                description,
                style: context.defaultTitle?.getStyle(
                  color: const Color(0xff878F9B),
                  weight: FontWeight.w400,
                  size: 14,
                ),
              ),
            ],
          ),
        ),
        if (isReady) const ReadyTag() else if (isRequired) const RequiredTag(),
      ],
    );
  }
}
