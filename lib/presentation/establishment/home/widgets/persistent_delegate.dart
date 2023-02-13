import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

const _maxExtent = 70.0;

const _minExtent = 70.0;

class MyPersistenHeader extends SliverPersistentHeaderDelegate {
  MyPersistenHeader({required this.child});
  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: context.currentTheme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(36),
        ),
      ),
      width: double.infinity,
      child: child,
    );
  }

  @override
  double get maxExtent => _maxExtent;

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
