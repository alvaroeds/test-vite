import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/summary_dto.dart';
import 'package:pedido_listo_web/presentation/order_summary/widgets/cards/mixin_style.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class InfoCard extends StatelessWidget with CardStyle {
  final SummaryDto summaryDto;
  const InfoCard({required this.summaryDto, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: cardPadding,
      margin: cardMargin,
      decoration: cardStyle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText('Pedido N° ${summaryDto.nroOrder}',
              style: context.currentStyle.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: const Color(0xFF565C66))),
          const SizedBox(height: 8),
          _TextTile(
            summaryDto.establishmentAddress,
            R.ASSETS_SVG_SHOP_SVG.toSvg(color: context.primaryColor),
          ),
          if (summaryDto.addressOfDelivery != null) ...[
            const SizedBox(height: 8),
            _TextTile(
              summaryDto.addressOfDelivery!,
              R.ASSETS_SVG_LOCATION_GREEN_SVG
                  .toSvg(color: context.primaryColor),
            )
          ],
          const SizedBox(height: 8),
          _TextTile(
            'Al telefono +51 ${summaryDto.clientPhone}',
            R.ASSETS_SVG_USER_GREEN_SVG.toSvg(color: context.primaryColor),
          ),
        ],
      ),
    );
  }
}

class _TextTile extends StatelessWidget {
  final String text;
  final Widget icon;
  const _TextTile(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 12),
        Expanded(
          child: SelectableText(text,
              style: GoogleFonts.manrope().copyWith(
                  fontWeight: FontWeight.w500, fontSize: 14, height: 1.35)),
        ),
      ],
    );
  }
}
