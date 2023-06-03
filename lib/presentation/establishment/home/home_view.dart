import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/custom_tabbar.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/footer/sliver_footer.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/header/establishment_header.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/list_section.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/persistent_delegate.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';

import 'package:pedido_listo_web/presentation/establishment/home/cubit/tab_home_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    required this.establishment,
    super.key,
  });

  final EstablishmentDto establishment;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    final tabs = categories.length;
    tabController = TabController(
        //  initialIndex: widget.initialIndex,
        length: tabs == 1 ? tabs : tabs + 1,
        vsync: this);

    super.initState();
  }

  /* void _listener() {
    //  if (tabController.indexIsChanging) setState(() {});
  } */

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  List<CategoriesDto> get categories => widget.establishment.categories;

  bool get isEstablishedEmpty => categories.isEmpty;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TabHomeCubit, TabHomeState>(
      listener: (context, state) {
        tabController.animateTo(state.index);
      },
      builder: (context, state) {
        final currentIndex = state.index;
        return DecoratedBox(
          decoration: const BoxDecoration(
              // gradient: LinearGradient(
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter,
              //     colors: [
              //       Colors.transparent,
              //       context.currentTheme.scaffoldBackgroundColor,
              //     ],
              //     stops: const [
              //       0.4,
              //       0.4,
              //     ]),
              ),
          child: CustomScrollView(
            slivers: [
              EstablishmentHeader(establishment: widget.establishment),
              if (isEstablishedEmpty) ...[
                const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                        child: Text(
                      'Aún estamos preparando\ntodo para ti 😁.',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ))),
              ] else ...[
                SliverPersistentHeader(
                    pinned: true,
                    delegate: MyPersistenHeader(
                      child: CustomTabbar(
                        controller: tabController,
                        categories: categories,
                        currentTab: state.index,
                        onTap: (index) {
                          context
                              .read<TabHomeCubit>()
                              .changeIndex(currentIndex == index ? 0 : index);
                        },
                      ),
                    )),
                SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                  final selectIndex =
                      currentIndex == 0 ? index : currentIndex - 1;
                  return Padding(
                    padding: EdgeInsets.only(
                        bottom: index == categories.length - 1 ? 100 : 0),
                    child: ListSection(
                      uuidUrl: widget.establishment.idUrl,
                      onTapProduct: (uuid) {
                        context.goNamed(
                          RouterProduct.name,
                          pathParameters: {
                            RouterEstablishment.firtsPath:
                                widget.establishment.idUrl,
                            RouterProduct.uuidPath: uuid,
                          },
                        );
                      },
                      category: categories[selectIndex],
                    ),
                  );
                }, childCount: currentIndex == 0 ? categories.length : 1)),
              ],
              const SliverFooter()
            ],
          ),
        );
      },
    );
  }
}
