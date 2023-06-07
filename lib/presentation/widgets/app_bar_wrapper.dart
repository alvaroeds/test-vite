import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class AppBarWrapper extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onPressedBack;
  final Widget title;
  final Widget action;
  const AppBarWrapper(
      {required this.title,
      required this.action,
      super.key,
      this.onPressedBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF6B7380).withOpacity(0.1),
            blurRadius: 24,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: IconButton(
                onPressed: onPressedBack,
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: context.primaryColor,
                )),
          ),
          title,
          SizedBox(width: 60, child: action)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}
