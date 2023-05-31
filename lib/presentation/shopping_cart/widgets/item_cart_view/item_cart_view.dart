import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/features/shopping_car/domain/shopping_car_dto.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/product_card/discount_product_tag.dart';
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
        padding: const EdgeInsets.all(26),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xFFE1E3E6),
            ),
          ),
        ),
        child: Row(
          children: [
            ColoredBox(
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
            const SizedBox(width: 26),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item.product.name,
                          style: GoogleFonts.manrope(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                      if (item.product.discount != 0)
                        DiscountProductTag(
                          discount: item.product.discountText,
                        )
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Notas: ', //565C66
                      style: GoogleFonts.manrope(
                        fontSize: 12,
                        color: const Color(0xff565C66),
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: item.comment,
                          style: GoogleFonts.manrope(
                            fontSize: 12,
                            color: const Color(0xff565C66),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            item.product.priceWithDiscount.formattedPrice,
                            style: GoogleFonts.manrope(
                              fontSize: 14,
                              color: context.currentTheme.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          if (item.product.discount > 0) ...[
                            const SizedBox(width: 10),
                            Text(
                              item.product.price.formattedPrice,
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
                        constraints:
                            const BoxConstraints(minWidth: 80, maxHeight: 40),
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
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: onRemove,
                                  icon: const Icon(
                                    Icons.delete,
                                    size: 26,
                                    color: Color(0xffA5ABB4),
                                  ))
                            else
                              IconButtonAmount(
                                icon: Icons.remove,
                                onTap: onRemove,
                              ),
                            SizedBox(
                              width: 30,
                              child: Center(
                                child: Text(
                                  item.amount.toString(),
                                  style: GoogleFonts.manrope(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff000000)),
                                ),
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
        margin: const EdgeInsets.all(6),
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
