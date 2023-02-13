import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/widgets.dart';

const _primaryColor = Color(0xff00AC69);
const _secondaryColor = Color(0xffAFFFE0);

class PopularTagDetail extends StatelessWidget {
  const PopularTagDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomTag(
        primaryColor: _primaryColor,
        secondaryColor: _secondaryColor,
        padding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        child: Icon(
          Icons.spa_rounded,
          color: _primaryColor,
          size: 18,
        ));
  }
}
