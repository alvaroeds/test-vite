import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/features/delivery_order/domain/summary_dto.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';

import 'package:pedido_listo_web/presentation/order_summary/widgets/cards/mixin_style.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class CartSummaryCard extends StatefulWidget {
  final List<SummaryProduct> products;
  final Service service;
  const CartSummaryCard({
    required this.products,
    required this.service,
    super.key,
  });

  @override
  State<CartSummaryCard> createState() => _CartSummaryCardState();
}

class _CartSummaryCardState extends State<CartSummaryCard> with CardStyle {
  int get totalQuantity => widget.products
      .fold(0, (previousValue, element) => previousValue + element.quantity);

  bool isShowDeatails = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: cardStyle,
      margin: cardMargin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => setState(() => isShowDeatails = !isShowDeatails),
            child: Padding(
              padding: cardPadding,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  widget.service.when(
                      delivery: () => R.ASSETS_SVG_DELIVERY_SVG
                          .toSvg(height: 36, color: context.primaryColor),
                      takeaway: () => R.ASSETS_SVG_PEDIDO_SVG
                          .toSvg(height: 36, color: context.primaryColor)),
                  const SizedBox(width: 4),
                  Expanded(
                      child: _TextHeader(
                          widget.service.when(
                            takeaway: () => 'para llevar',
                            delivery: () => 'a delivery',
                          ),
                          totalQuantity)),
                  Icon(
                      isShowDeatails
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      size: 30)
                ],
              ),
            ),
          ),
          if (isShowDeatails)
            ...List.generate(widget.products.length, (index) {
              final product = widget.products[index];
              return _ProductSection(
                product: product,
                isLast: index == widget.products.length - 1,
              );
            })
        ],
      ),
    );
  }
}

class _TextHeader extends StatelessWidget {
  final String service;
  final int quantity;
  const _TextHeader(this.service, this.quantity);

  @override
  Widget build(BuildContext context) {
    final manrope = GoogleFonts.manrope(
        color: const Color(0xff565C66), height: 1.35, fontSize: 14);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Su pedido $service:',
                style: manrope.copyWith(fontWeight: FontWeight.bold)),
            Text('$quantity Producto(s)',
                style: manrope.copyWith(
                    color: context.primaryColor, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 2),
        Text('Información de pedido',
            style: manrope.copyWith(fontWeight: FontWeight.w500, fontSize: 12)),
      ],
    );
  }
}

class _ProductSection extends StatelessWidget {
  final SummaryProduct product;
  final bool isLast;
  const _ProductSection({required this.product, required this.isLast});

  @override
  Widget build(BuildContext context) {
    final manrope = GoogleFonts.manrope(
        color: const Color(0xff565C66), height: 1.35, fontSize: 14);

    final styleSubtext = manrope.copyWith(
        fontSize: 12,
        height: 0.875,
        color: const Color(0xff878F9B),
        fontWeight: FontWeight.w500);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 48,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xFFE1E3E6),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              6), // Igual que el valor anterior
                          child: Image.network(
                            product.image!,
                            fit: BoxFit.cover,
                            width: 48,
                            height: 48,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 43,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('x${product.quantity}  ',
                                    style: manrope.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900)),
                                Text(product.name,
                                    style: manrope.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ), //878F9B
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Precio Total:', style: styleSubtext),
                                Text(product.totalCost.formattedPrice,
                                    style: styleSubtext.copyWith(
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (product.comment.isNotEmpty) ...[
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: 'Notas: ',
                    style: manrope.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(
                        text: product.comment,
                        style: manrope.copyWith(
                            fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    ],
                  ),
                )
              ],
              if (product.modifiers.isNotEmpty) ...[
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(' Precio unitario',
                        style:
                            styleSubtext.copyWith(fontWeight: FontWeight.w200)),
                    Text(product.price.formattedPrice,
                        style:
                            styleSubtext.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 5),
                ...product.modifiers.map(_ModifierTile.new)
              ],
            ],
          ),
        ),
        if (!isLast)
          const Divider(
            height: 0,
            color: Color(0xffE1E3E6),
          ),
      ],
    );
  }
}

class _ModifierTile extends StatelessWidget {
  final SummaryModifier modifier;
  const _ModifierTile(this.modifier);

  @override
  Widget build(BuildContext context) {
    final manrope = GoogleFonts.manrope(
        color: const Color(0xff565C66), height: 1.35, fontSize: 14);

    final styleSubtext = manrope.copyWith(
        fontSize: 12,
        height: 0.875,
        color: const Color(0xff878F9B),
        fontWeight: FontWeight.w100);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(' +${modifier.quantity} ${modifier.name}', style: styleSubtext),
          Text(modifier.totalCost.formattedPrice, style: styleSubtext),
        ],
      ),
    );
  }
}
