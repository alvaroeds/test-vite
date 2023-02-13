import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pedido_listo_web/features/establishment/domain/network_dto.dart';

class SocialLinkers extends StatelessWidget {
  const SocialLinkers({
    required this.socialNetworks,
    super.key,
  });

  final List<SocialNetworkDto> socialNetworks;

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
        ),
        FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
      ],
    );
  }
}
