import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';

class ModifierList extends StatefulWidget {
  final ItemCart item;
  const ModifierList({required this.item, super.key});

  @override
  State<ModifierList> createState() => _ModifierListState();
}

class _ModifierListState extends State<ModifierList> {
  bool get hasOnlyModifier => widget.item.totalModifiers == 1;
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 4,
        ),
        if (isExpanded) ...[
          ...widget.item.extrasFood.map(
            (extra) => _TextTile('+${extra.amount} ${extra.extraFood.name}'),
          ),
          ...widget.item.optionsFoodOneSelection.map(
            (extra) => _TextTile('+1 ${extra.optionFood.name}'),
          ),
          ...widget.item.optionsFoodForMultiple.map(
            (extra) => _TextTile('+1 ${extra.optionFood.name}'),
          )
        ] else ...[
          if (widget.item.extrasFood.isNotEmpty)
            _TextTile(
                '+${widget.item.extrasFood.first.amount} ${widget.item.extrasFood.first.extraFood.name}')
          else if (widget.item.optionsFoodOneSelection.isNotEmpty)
            _TextTile(
                '+1 ${widget.item.optionsFoodOneSelection.first.optionFood.name}')
          else if (widget.item.optionsFoodForMultiple.isNotEmpty)
            _TextTile(
                '+1 ${widget.item.optionsFoodForMultiple.first.optionFood.name}')
        ],
        if (!hasOnlyModifier)
          TextButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Text(
                isExpanded ? 'Ver Menos' : 'Ver Más',
                style: const TextStyle(fontSize: 14),
              ))
      ],
    );
  }
}

class _TextTile extends StatelessWidget {
  final String text;
  const _TextTile(this.text);

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFF878F9B);
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          height: 4,
          width: 4,
          decoration: const BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        Text(
          text,
          style: GoogleFonts.manrope(
            color: color,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
