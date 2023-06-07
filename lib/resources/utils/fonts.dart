import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

/// extension To have fonts easily
extension Styles on TextStyle {
  TextStyle getStyle({
    Color? color,
    double? size,
    FontWeight? weight,
  }) =>
      copyWith(
        color: color ?? this.color,
        fontSize: size ?? fontSize ?? 30,
        fontWeight: weight ?? fontWeight ?? FontWeight.w600,
      );
}

extension Fonts on BuildContext {
  ThemeData get currentTheme => Theme.of(this);
  TextTheme get currentStyle => currentTheme.textTheme;

  TextStyle? get defaultTitle => currentStyle.displayLarge;

  TextStyle? get defaultSubtitle => currentStyle.displayMedium;
  TextStyle? getModifierContent({bool isDisabled = false}) =>
      currentStyle.bodyMedium?.copyWith(
          color: isDisabled ? const Color(0xffA5A3A9) : const Color(0xff40454D),
          fontSize: 14,
          fontWeight: FontWeight.w400);

  TextStyle? get headline4 => currentStyle.headlineMedium;

  TextStyle? get interBold1Title => currentStyle.headlineMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: const Color(0xff1D252C),
      );

  TextStyle? get interBold2Title => currentStyle.headlineMedium?.copyWith(
        color: const Color(0xff40454D),
      );

  TextStyle? get defaultButton => currentStyle.bodySmall;

  //* Create Account Landing
  TextStyle? get titleCreateLandingFont => defaultTitle?.getStyle(
        color: const Color(0xffFFFFFF),
        size: 48,
      );

  TextStyle? get subTitleCreateLandingFont => defaultSubtitle?.getStyle(
        color: const Color(0xffFFFFFF),
        size: 24,
      );

  TextStyle? get buttonCreateLandingFont => defaultButton?.getStyle(
        color: Colors.white,
        size: 16,
        weight: FontWeight.bold,
      );

  //* About Pedido Listo
  TextStyle? get titleAboutFont => defaultTitle?.getStyle(
        size: 40,
        color: const Color(0xff00452A),
      );

  TextStyle? get descriptionAboutFont => defaultSubtitle?.getStyle(
        size: 24,
        color: const Color(0xff6B7380),
      );

  TextStyle? get descriptionAboutBoldFont => descriptionAboutFont?.getStyle(
        weight: FontWeight.bold,
      );

  //* Benefits Pedido Listo
  TextStyle? get titleBenefitsFont => defaultTitle?.getStyle(
        size: 40,
        color: const Color(0xff00452A),
      );

  TextStyle? get titleCardBenefitFont => defaultSubtitle?.getStyle(
        size: 28,
        color: const Color(0xff00452A),
      );

  TextStyle? get descriptionCardBenefitFont => defaultSubtitle?.getStyle(
        size: 20,
        color: const Color(0xff6B7380),
      );

  //* Know More
  TextStyle? get titleKnoeMoreFont => defaultTitle?.getStyle(
        size: getDouble(20, 30, 40),
        color: const Color(0xff00452A),
      );
}
