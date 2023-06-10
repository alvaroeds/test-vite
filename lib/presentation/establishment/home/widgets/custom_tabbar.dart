import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class CustomTabbar extends StatelessWidget {
  const CustomTabbar({
    required this.controller,
    required this.categories,
    required this.onTap,
    required this.currentTab,
    super.key,
  });
  final int currentTab;
  final TabController controller;
  final List<CategoriesDto> categories;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black,
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        decoration: _decoration(context),
        child: Row(
          children: [
            const _MenuWidget(),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  padding: EdgeInsets.zero,
                  isScrollable: true,
                  controller: controller,
                  indicatorColor: context.primaryColor,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    if (categories.length == 1)
                      _Tab(
                        name: categories.first.name,
                        selected: true,
                      )
                    else ...[
                      _Tab(
                        name: 'Todos',
                        selected: currentTab == 0,
                      ),
                      ...List.generate(categories.length, (index) {
                        return _Tab(
                          name: categories[index].name,
                          selected: currentTab == index + 1,
                        );
                      })
                    ]
                  ],
                  onTap: onTap,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _decoration(BuildContext context) => BoxDecoration(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(25),
      ),
      color: context.currentTheme.scaffoldBackgroundColor);
}

class _Tab extends StatelessWidget {
  const _Tab({
    required this.name,
    required this.selected,
  });

  final String name;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final colorDefault = selected ? context.primaryColor : Colors.black;

    return Tab(
      height: 30,
      child: Text(
        name,
        style: GoogleFonts.inter(
            fontSize: 16, color: colorDefault, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  const _MenuWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(28),
        elevation: 11,
        shadowColor: Colors.black54,
        child: InkWell(
          onTap: () => Scaffold.of(context).openDrawer(),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.currentTheme.primaryColor,
            ),
            padding: const EdgeInsets.all(8),
            child: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
      ),
    );
  }
}
