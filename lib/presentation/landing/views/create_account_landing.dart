import 'package:flutter/material.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/create_button.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class CreateAccountLandingView extends StatelessWidget {
  const CreateAccountLandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 648,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              R.ASSETS_BACKGROUND_LANDING_WEBP, //TODOchris: CHANGE THIS TO NETWORK IMAGE FROM DB
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.black,
              ),
            )),
            const Align(
              alignment: Alignment(-0.9, 0),
              child: _InfoSection(),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoSection extends StatelessWidget {
  const _InfoSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Aumente su eficiencia\ncon una tienda virtual.',
            style: context.titleCreateLandingFont,
          ),
          const SizedBox(height: 9),
          Text(
            'Crea tu propia tienda virtual gratis y gestiona\ntus pedidos online con solo registrarte.',
            style: context.subTitleCreateLandingFont,
          ),
          const SizedBox(height: 16),
          const CreateButton()
        ],
      ),
    );
  }
}
