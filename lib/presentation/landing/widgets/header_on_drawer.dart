import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class HeaderOnDrawer extends StatelessWidget {
  const HeaderOnDrawer({
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        TextButton(
          onPressed: () {
            whatIsTap.call();
            Scaffold.of(context).closeEndDrawer();
          },
          child: const Text('Que es Pedido Listo?'),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            benefitsTap.call();
            Scaffold.of(context).closeEndDrawer();
          },
          child: const Text('Beneficios'),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            whyChooseTap.call();
            Scaffold.of(context).closeEndDrawer();
          },
          child: const Text('Porque escogernos?'),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            //TODOfardcrex:  context.goNamed(RouterRegister.name);
            Scaffold.of(context).closeEndDrawer();
          },
          child: const Text('Crear cuenta'),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 40,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: context.currentTheme.primaryColor,
            ),
            onPressed: () {
              //TODOfardcrex: context.goNamed(RouterBackOffice.name);
              Scaffold.of(context).closeEndDrawer();
            },
            child: Text(
              'Iniciar Sesion',
              style: context.defaultButton?.getStyle(
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
