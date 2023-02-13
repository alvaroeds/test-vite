import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  const CustomTag({
    required this.child,
    required this.primaryColor,
    required this.secondaryColor,
    this.padding,
    super.key,
  });

  final Widget child;
  final EdgeInsets? padding;
  final Color primaryColor;
  final Color secondaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: _decoration(),
      alignment: Alignment.center,
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 1.5, horizontal: 4),
      child: child,
    );
  }

  BoxDecoration _decoration() => BoxDecoration(
        color: secondaryColor,
        border: Border.all(color: primaryColor, width: 1.5),
        borderRadius: BorderRadius.circular(5),
      );
}
