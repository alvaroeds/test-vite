import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class RoundedHeaderCard extends StatelessWidget {
  const RoundedHeaderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: DelegateRounded(),
      pinned: true,
    );
  }
}

//* min and max extent for the Header
const _maxHeight = 40.0;
const _minHeight = 40.0;

class DelegateRounded extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ColoredBox(
      color: Colors.black,
      child: Container(
        height: _maxHeight,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(45),
          ),
          color: context.backgroundColor,
        ),
      ),
    );
  }

  @override
  double get maxExtent => _maxHeight;

  @override
  double get minExtent => _minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
