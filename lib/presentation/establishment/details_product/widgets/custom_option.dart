import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class CustomOption extends StatelessWidget {
  const CustomOption({
    required this.name,
    required this.price,
    required this.onTap,
    this.isSelected = true,
    super.key,
    this.disabledIcon,
    this.selectedIcon,
    this.isDisabled = false,
  });

  final String name;
  final double price;
  final IconData? disabledIcon;
  final IconData? selectedIcon;
  final bool isSelected;
  final bool isDisabled;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final mobileWidth = context.screenWidth / 2 - (19 * 2) - 9;
    final mobileTablet = context.screenWidth / 3 - (19 * 2) - 18;
    final mobileDektop = context.screenWidth / 4 - (19 * 2) - 27;

    return Padding(
      padding: const EdgeInsets.only(right: 23, bottom: 15),
      child: InkWell(
        onTap: onTap,
        hoverColor: context.primaryColor.withOpacity(.1),
        splashColor: context.primaryColor.withOpacity(.2),
        borderRadius: BorderRadius.circular(18),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 16),
          width: context.getDouble(mobileWidth, mobileTablet, mobileDektop),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: isDisabled
                    ? const Color(0xffA5A3A9)
                    : isSelected
                        ? context.primaryColor
                        : const Color(0xff6B7380),
              )),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: CustomOptionInfo(
                    name: name, price: price, isDisabled: isDisabled),
              ),
              const SizedBox(width: 8),
              FaIcon(
                isSelected
                    ? selectedIcon ?? FontAwesomeIcons.circleDot
                    : disabledIcon ?? Icons.circle_outlined,
                color: isDisabled
                    ? const Color(0xffA5A3A9)
                    : isSelected
                        ? context.primaryColor
                        : const Color(0xff878F9B),
              )
            ],
          ),
        ),
      ),
    );
  }
}
