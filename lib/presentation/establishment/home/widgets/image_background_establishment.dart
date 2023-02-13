import 'package:flutter/material.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';
import 'package:pedido_listo_web/presentation/widgets/widgets.dart';

class ImageBackgraoundEstablishment extends StatelessWidget {
  const ImageBackgraoundEstablishment({
    required this.establishment,
    super.key,
  });

  final EstablishmentDto establishment;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: WrapNetworkImage(
          image: establishment.bannerUrl,
          width: double.infinity,
          fit: BoxFit.cover,
        )),
        Positioned.fill(child: DecoratedBox(decoration: _decoration())),
      ],
    );
  }

  BoxDecoration _decoration() => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(.5),
            Colors.black,
          ],
        ),
      );
}
