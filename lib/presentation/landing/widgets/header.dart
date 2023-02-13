import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/tabs_header.dart';
import 'package:pedido_listo_web/presentation/widgets/logo_pedido_listo.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class LandingHeader extends StatelessWidget {
  const LandingHeader({
    required this.benefitsTap,
    required this.whatIsTap,
    required this.whyChooseTap,
    super.key,
  });

  final VoidCallback benefitsTap;
  final VoidCallback whatIsTap;
  final VoidCallback whyChooseTap;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 108,
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 48),
        child: Row(
          children: [
            const LogoPedidoListo(),
            const Spacer(),
            if (context.screenWidth > 1040) ...[
              LandingTabsHeader(
                  title: 'Que es Pedido Listo?', onTap: whatIsTap),
              LandingTabsHeader(title: 'Beneficios', onTap: benefitsTap),
              LandingTabsHeader(
                  title: 'Porque escogernos?', onTap: whyChooseTap),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 56),
                  LandingTabsHeader(
                    title: 'Crear Cuenta',
                    onTap: () => {},
                    paddingRight: 24,
                  ),
                  SizedBox(
                    width: 154,
                    height: 58,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.currentTheme.primaryColor,
                      ),
                      onPressed: () => {},
                      child: Text(
                        'Iniciar Sesion',
                        style: context.defaultButton?.getStyle(
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
            if (context.screenWidth < 1040)
              IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(Icons.menu)),
          ],
        ),
      ),
    );
  }
}
