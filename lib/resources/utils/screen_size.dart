import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/screen_type.dart';

extension ScreenSize on BuildContext {
  Size get _size => MediaQuery.of(this).size;

  double get screenHeight => _size.height;
  double get screenWidth => _size.width;

  ScreenType get screenType => ScreenType.getType(screenWidth);
  bool get isMobile => screenType.isMobile;
  bool get isDesktop => screenType.isDesktop;
  bool get isTablet => screenType.isTablet;

  double getDouble(double mobile, double tablet, double desktop) {
    if (isMobile) return mobile;
    if (isTablet) return tablet;
    return desktop;
  }

  //? Default Padding
  double get overLimitPadding {
    final padding = (screenWidth - ScreenType.desktop.value) / 2;
    return screenWidth > ScreenType.desktop.value ? padding : 0.0;
  }
}
