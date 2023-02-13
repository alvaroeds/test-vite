import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class LandingTabsHeader extends StatefulWidget {
  const LandingTabsHeader(
      {required this.title, required this.onTap, super.key, this.paddingRight});

  final String title;
  final VoidCallback onTap;
  final double? paddingRight;

  @override
  State<LandingTabsHeader> createState() => _LandingTabsHeaderState();
}

class _LandingTabsHeaderState extends State<LandingTabsHeader> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: isHovered ? 1.12 : 1,
      child: Padding(
        padding: EdgeInsets.only(right: widget.paddingRight ?? 32),
        child: InkWell(
          onHover: (value) {
            setState(() {
              isHovered = value;
            });
          },
          onTap: widget.onTap,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.title,
                style: context.defaultButton?.getStyle(
                  size: 16,
                  color: const Color(0xff6B7380),
                ),
              ),
              if (isHovered)
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  color: const Color(0xff6B7380),
                  height: 2,
                  width: widget.title.length * 8,
                )
            ],
          ),
        ),
      ),
    );
  }
}
