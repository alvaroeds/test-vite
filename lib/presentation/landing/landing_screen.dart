import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/landing/know_more_bloc_page.dart';
import 'package:pedido_listo_web/presentation/landing/views/about_pedido_listo_view.dart';
import 'package:pedido_listo_web/presentation/landing/views/benefits_landing_view.dart';
import 'package:pedido_listo_web/presentation/landing/views/create_account_landing.dart';
import 'package:pedido_listo_web/presentation/landing/views/start_selling_view.dart';
import 'package:pedido_listo_web/presentation/landing/views/why_choose_us.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/header.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/header_on_drawer.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late final PageController controller;
  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  Future<void> moveToItem(int index) async {
    return controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 2000),
      curve: Curves.decelerate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: (context.screenWidth < 1040)
            ? Drawer(
                child: HeaderOnDrawer(
                whatIsTap: () => moveToItem(1),
                benefitsTap: () => moveToItem(2),
                whyChooseTap: () => moveToItem(3),
              ))
            : null,
        body: Stack(
          children: [
            const Positioned.fill(
                child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffE0FFF3),
                    Color(0xffFFFFFF),
                    Color(0xffFFFFFF),
                  ],
                ),
              ),
            )),
            Positioned.fill(
              child: SafeArea(
                  child: CustomScrollView(
                controller: controller,
                slivers: [
                  LandingHeader(
                    whatIsTap: () => moveToItem(1),
                    benefitsTap: () => moveToItem(2),
                    whyChooseTap: () => moveToItem(3),
                  ),
                  const CreateAccountLandingView(),
                  const AboutPedidoListoView(),
                  const BenefitsLandingview(),
                  const WhyChooseUs(),
                  const StarSellingLandingView(),
                  const KnowMoreBlocPage(),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
