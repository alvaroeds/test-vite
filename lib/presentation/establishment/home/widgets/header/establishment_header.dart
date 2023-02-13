import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/widgets.dart';

class EstablishmentHeader extends StatelessWidget {
  const EstablishmentHeader({
    required this.establishment,
    super.key,
  });

  final EstablishmentDto establishment;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: DelegateEstablishmentHeaders(
        establishment: establishment,
      ),
      pinned: true,
    );
  }
}

//* min and max extent for the Header
const maxHeight = 211.0;
const minHeight = 114.0;

//* for Image
const _minLeftImageMargin = 24.0;
const _maxLeftImageMargin = 49.0;
const _minTopImageMargin = 19.0;
const _maxTopImageMargin = 70.0;
const _minBottonImageMargin = 20.0;
const _maxBottonImageMargin = 45.0;

//* for Title and description
const _minLeftTitleMargin = 127.0;
const _maxLeftTitleMargin = 136.0;
const _minRightTitleMargin = 80.0;
const _maxRightTitleMargin = 136.0;
const _minTitleTopMargin = 33.0;
const _maxTitleTopMargin = 83.0;

//* for Social buttons
const _minTopSocialsMargin = 46.5;
const _maxTopSocialsMargin = 44.0;
const _minRightSocialsMargin = 26.5;
const _maxRightSocialsMargin = 49.0;

class DelegateEstablishmentHeaders extends SliverPersistentHeaderDelegate {
  DelegateEstablishmentHeaders({
    required this.establishment,
  });

  final EstablishmentDto establishment;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final percent = shrinkOffset / maxExtent;

    final imageTopMargin =
        lerpDouble(_maxTopImageMargin, _minTopImageMargin, percent);
    final imageLeftMargin =
        lerpDouble(_minLeftImageMargin, _maxLeftImageMargin, percent);
    final imageBottonMargin =
        lerpDouble(_maxBottonImageMargin, _minBottonImageMargin, percent);

    final titleTopMargin =
        lerpDouble(_maxTitleTopMargin, _minTitleTopMargin, percent);
    final titleLeftMargin =
        lerpDouble(_minLeftTitleMargin, _maxLeftTitleMargin, percent);
    final titleRightMargin =
        lerpDouble(_minRightTitleMargin, _maxRightTitleMargin, percent);

    final socialsTopMargin =
        lerpDouble(_maxTopSocialsMargin, _minTopSocialsMargin, percent);
    final socialsRightMargin =
        lerpDouble(_maxRightSocialsMargin, _minRightSocialsMargin, percent);

    return Stack(
      children: [
        const Positioned.fill(child: ColoredBox(color: Colors.black)),
        ImageBackgraoundEstablishment(establishment: establishment),
        Positioned(
          top: imageTopMargin,
          left: imageLeftMargin,
          bottom: imageBottonMargin,
          child: ImageCompany(
            image: establishment.profileImage,
            percent: percent,
          ),
        ),
        Positioned(
          top: titleTopMargin,
          left: titleLeftMargin,
          right: titleRightMargin,
          child: NameCompanyInfo(
            establishment: establishment,
            percent: percent,
          ),
        ),
        Positioned(
          top: socialsTopMargin,
          right: socialsRightMargin,
          child: SocialLinkers(
            socialNetworks: establishment.socialNetwork,
          ),
        )
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
