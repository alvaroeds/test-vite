import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class ResponsiveLayout extends ResponsiveWidget {
  const ResponsiveLayout({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget buildDesktop(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
          children.map((e) => e is SizedBox ? e : Expanded(child: e)).toList(),
    );
  }

  @override
  Widget buildTablet(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      alignment: WrapAlignment.center,
      children: children,
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: children,
    );
  }

  @override
  Widget build(BuildContext context) {
    final children = {
      ScreenType.mobile: buildMobile(context),
      ScreenType.tablet: buildTablet(context),
      ScreenType.desktop: buildDesktop(context),
    };

    return children[context.screenType] ?? buildTablet(context);
  }
}

abstract class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key});

  Widget buildDesktop(BuildContext context);
  Widget buildMobile(BuildContext context);
  Widget buildTablet(BuildContext context);

  @override
  Widget build(BuildContext context);
}
