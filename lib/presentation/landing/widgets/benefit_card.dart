import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:pedido_listo_web/const/landing_resources.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class BenefitCard extends StatelessWidget {
  const BenefitCard({
    required this.imageCombo,
    required this.description,
    required this.title,
    super.key,
  });

  final ImageCombo imageCombo;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: context.isMobile ? 680 : 575, maxWidth: 375),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(187), bottom: Radius.circular(20)),
            color: Color(0xffFFFFFF),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 10, offset: Offset(2, 15))
            ]),
        child: Column(
          children: [
            Expanded(child: _Image(imageCombo: imageCombo)),
            Expanded(child: _Info(description: description, title: title)),
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({required this.imageCombo});
  final ImageCombo imageCombo;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: BlurHash(
        hash: imageCombo.codeBlur,
        image: imageCombo.url,
        imageFit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          color: Colors.black,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );

    // Image.network(
    //   imageCombo.url,

    //   loadingBuilder: (context, child, loadingProgress) {
    //     if (loadingProgress == null) return child;
    //     if (loadingProgress.cumulativeBytesLoaded == loadingProgress.expectedTotalBytes) return child;

    //     return BlurHash(hash: imageCombo.codeBlur);
    //   },
    //   frameBuilder: (_, child, frame, wasSynchronouslyLoaded) {
    //     if (wasSynchronouslyLoaded) return child;
    //     return AnimatedSwitcher(
    //       duration: const Duration(milliseconds: 500),
    //       child: frame != null ? child : BlurHash(hash: imageCombo.codeBlur),
    //     );
    //   },

    // );
  }
}

class _Info extends StatelessWidget {
  const _Info({required this.description, required this.title});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: context.titleCardBenefitFont,
          ),
          // const SizedBox(height: 36),
          Center(
            child: Text(
              description,
              textAlign: TextAlign.center,
              maxLines: 4,
              style: context.descriptionCardBenefitFont,
            ),
          ),
        ],
      ),
    );
  }
}
