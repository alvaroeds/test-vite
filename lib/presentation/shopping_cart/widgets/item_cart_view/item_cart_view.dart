import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/widgets/item_cart_view/discount_product_tag.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/widgets/item_cart_view/modifiers_list.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class ItemCardView extends StatelessWidget {
  final ItemCart item;
  final VoidCallback onRemove;
  final VoidCallback onAdd;

  const ItemCardView(this.item,
      {required this.onRemove, required this.onAdd, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        width: double.maxFinite,
        constraints: const BoxConstraints(minHeight: 150),
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xFFE1E3E6))),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: ColoredBox(
                color: const Color(0xFFE1E3E6),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(5), // Igual que el valor anterior
                  child: Image.network(
                    item.product.images.first,
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.product.name,
                          style: GoogleFonts.manrope(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          )),
                      if (item.product.discount != 0)
                        DiscountCartTag(
                          discount: item.product.discountText,
                        )
                    ],
                  ),
                  if (!item.isModifiersEmpty)
                    ModifierList(
                      item: item,
                    ),
                  if (item.comment.isNotEmpty)
                    CommentNote(
                      comment: item.comment,
                    ),
                  if (item.comment.isEmpty && item.isModifiersEmpty)
                    const SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            item.totalCostWithDiscount.formattedPrice,
                            style: GoogleFonts.manrope(
                              fontSize: 14,
                              color: context.currentTheme.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          if (item.product.discount > 0) ...[
                            const SizedBox(width: 10),
                            Text(
                              item.totalCost.formattedPrice,
                              style: GoogleFonts.manrope(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.lineThrough,
                                  color: const Color(0xff878F9B)),
                            ),
                          ]
                        ],
                      ),
                      Container(
                        constraints: const BoxConstraints(
                            minWidth: 87 * 1.15, maxHeight: 29 * 1.15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffC3C7CD),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (item.amount == 1)
                              IconButtonDelete(
                                onTap: onRemove,
                              )
                            else
                              IconButtonAmount(
                                icon: Icons.remove,
                                onTap: onRemove,
                              ),
                            Container(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              constraints: const BoxConstraints(minWidth: 25),
                              child: Text(
                                item.amount.toString(),
                                style: GoogleFonts.manrope(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff000000)),
                              ),
                            ),
                            IconButtonAmount(
                              icon: Icons.add,
                              onTap: onAdd,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class IconButtonDelete extends StatelessWidget {
  const IconButtonDelete({required this.onTap, super.key});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: Container(
          margin: const EdgeInsets.all(4),
          child: const Center(
            child: Icon(
              Icons.delete,
              size: 24,
              color: Color(0xffA5ABB4),
            ),
          ),
        ));
  }
}

class IconButtonAmount extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const IconButtonAmount({required this.icon, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: context.primaryColor,
          ),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 20,
          color: context.primaryColor,
        ),
      ),
    );
  }
}

class CommentNote extends StatefulWidget {
  final String comment;
  const CommentNote({required this.comment, super.key});

  @override
  State<CommentNote> createState() => _CommentNoteState();
}

class _CommentNoteState extends State<CommentNote> {
  bool isExpanded = false;
  bool isMultiline = false;

  @override
  void initState() {
    super.initState();
    isMultiline = widget.comment.contains('\n');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 100), () {
        setState(() {});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget getText() => Padding(
          padding: EdgeInsets.only(
              top: isMultiline ? 6 : 0, bottom: isExpanded ? 0 : 6),
          child: RichText(
            maxLines: isExpanded ? 99 : 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              text: 'Notas: ', //565C66
              style: GoogleFonts.manrope(
                fontSize: 12,
                color: const Color(0xff565C66),
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: widget.comment,
                  style: GoogleFonts.manrope(
                    fontSize: 12,
                    color: const Color(0xff565C66),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        );
    Widget getButton() => TextButton(
          onPressed: () => setState(() => isExpanded = !isExpanded),
          child: Text(
            isExpanded ? 'Leer Menos' : 'Leer Más',
            style: context.defaultButton?.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: context.primaryColor,
            ),
          ),
        );

    return isExpanded
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [getText(), getButton()],
          )
        : LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
            if (!isMultiline) {
              final textSpan = TextSpan(
                text: 'Notas: ${widget.comment}',
                style: const TextStyle(fontSize: 12),
              );
              final textPainter = TextPainter(
                text: textSpan,
                textDirection: TextDirection.ltr,
              )..layout(maxWidth: constraints.maxWidth);
              isMultiline = textPainter.width >= constraints.maxWidth;
            }
            return Row(children: [
              Flexible(
                child: getText(),
              ),
              if (isMultiline) getButton()
            ]);
          });
  }
}
