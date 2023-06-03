import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/presentation/establishment/home/cubit/tab_home_cubit.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/drawer/category_drawer_option.dart';

const _blackColor = Color(0xff1D252C);

class DrawerEstablishment extends StatelessWidget {
  const DrawerEstablishment({
    required this.categories,
    super.key,
  });

  final List<CategoriesDto> categories;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: BlocSelector<TabHomeCubit, TabHomeState, int>(
        selector: (state) => state.index,
        builder: (context, currentIndex) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(14, 0, 24, 0),
                height: 80,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    const Icon(Icons.menu_book_outlined, color: _blackColor),
                    const SizedBox(width: 8),
                    Text(
                      'Categorias',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: _blackColor,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: _blackColor),
                  ],
                ),
              ),
              const Divider(
                height: 1, // Altura de la línea
                color: Color(0xFFE1E3E6), // Color de la línea
                thickness: 2,
              ),
              const SizedBox(height: 50),
              if (categories.length == 1)
                CategoryDrawerOption(
                  name: categories.first.name,
                  isSelected: true,
                  productsLength: categories.first.products.length,
                  onTap: () => Navigator.pop(context),
                )
              else ...[
                CategoryDrawerOption(
                  name: 'Todos',
                  isSelected: currentIndex == 0,
                  productsLength:
                      categories.expand((element) => element.products).length,
                  onTap: () {
                    Navigator.pop(context);
                    context.read<TabHomeCubit>().changeIndex(0);
                  },
                ),
                ...List.generate(categories.length, (index) {
                  final category = categories[index];
                  return CategoryDrawerOption(
                    name: category.name,
                    isSelected: currentIndex == index + 1,
                    productsLength: category.products.length,
                    onTap: () {
                      Navigator.pop(context);
                      context.read<TabHomeCubit>().changeIndex(
                          currentIndex == index + 1 ? 0 : index + 1);
                    },
                  );
                })
              ],

              //? use this as default
              // ...categories.map(
              //   (e) => CategoryDrawerOption(
              //     name: e.name,
              //     isSelected: true,
              //     productsLength: e.products.length,
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}
