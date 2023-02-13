import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

extension ColorTheme on BuildContext {
  Color get primaryColor => currentTheme.colorScheme.primary;

  Color? get secondaryColor => currentTheme.colorScheme.secondary;

  Color get errorColor => currentTheme.colorScheme.error;

  // Color get succesColor => ColorsApp.successColor;

  Color get backgroundColor => currentTheme.scaffoldBackgroundColor;
}
