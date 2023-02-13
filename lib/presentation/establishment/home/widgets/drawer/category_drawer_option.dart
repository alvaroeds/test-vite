import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _selectedColor = Color(0xff00AC69);

class CategoryDrawerOption extends StatelessWidget {
  const CategoryDrawerOption({
    required this.name,
    required this.isSelected,
    required this.productsLength,
    required this.onTap,
    super.key,
  });

  final String name;
  final bool isSelected;
  final int productsLength;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.fromLTRB(14, 15, 34, isSelected ? 10 : 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              name,
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: isSelected ? _selectedColor : const Color(0xff1D252C),
              ),
            ),
            Text(
              '$productsLength Productos',
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: isSelected ? _selectedColor : const Color(0xff878F9B),
              ),
            ),
            if (isSelected) const Divider(color: _selectedColor, thickness: 2)
          ],
        ),
      ),
    );
  }
}
