import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/theme/colors_app.dart';
import 'package:pedido_listo_web/resources/utils/fonts.dart';

const _selectedColor = ColorsApp.primaryColorLight;

class CategoryDrawerOption extends StatelessWidget {
  const CategoryDrawerOption({
    required this.name,
    required this.isSelected,
    required this.productsLength,
    required this.onTap,
    super.key,
  });

  final String name;
  final bool isSelected;
  final int productsLength;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.fromLTRB(14, 15, 34, isSelected ? 10 : 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(name,
                style: context.interBold2Title?.copyWith(
                  fontSize: 14,
                  color: isSelected ? _selectedColor : null,
                )),
            Text(
              '$productsLength Productos',
              style: context.headline4?.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: isSelected ? _selectedColor : const Color(0xff878F9B),
              ),
            ),
            if (isSelected) const Divider(color: _selectedColor, thickness: 2)
          ],
        ),
      ),
    );
  }
}
