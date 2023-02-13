enum ScreenType {
  // mobile(569),
  // tablet(1125),
  mobile(767),
  tablet(1024),
  desktop(1196);

  const ScreenType(this.value);

  final double value;

  static ScreenType getType(double val) {
    if (val <= mobile.value) return mobile;
    if (val <= tablet.value) return tablet;
    return desktop;
  }
}

extension Screens on ScreenType {
  bool get isMobile => this == ScreenType.mobile;
  bool get isTablet => this == ScreenType.tablet;
  bool get isDesktop => this == ScreenType.desktop;
}
