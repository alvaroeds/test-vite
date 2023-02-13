import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/header/detail_share_button.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';

class HeaderDetailProduct extends StatelessWidget {
  const HeaderDetailProduct({
    required this.image,
    required this.uuid,
    super.key,
  });

  final String image;
  final String uuid;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: DelegateDetailProductHeader(image: image, uuid: uuid),
      pinned: true,
    );
  }
}

//* min and max extent for the Header
const maxHeight = 300.0;
const minHeight = 123.0;

class DelegateDetailProductHeader extends SliverPersistentHeaderDelegate {
  DelegateDetailProductHeader({
    required this.image,
    required this.uuid,
  });

  final String image;
  final String uuid;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final percent = shrinkOffset / maxHeight;
    return Stack(
      children: [
        BackgroundProductImage(image: image, percent: percent),
        const Positioned(
          top: 20,
          left: 20,
          child: DetailsBackButton(),
        ),
        const Positioned(
          top: 20,
          right: 20,
          child: DetailsShareButton(),
        ),
      ],
    );
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
