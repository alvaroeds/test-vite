import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/show_snack_bar.dart';
import 'package:share_plus/share_plus.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:universal_html/html.dart' as html;

class DetailsShareButton extends StatelessWidget {
  const DetailsShareButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
          onTap: () {
            void showError(Object e) => showSnackBar(
                'Su navegador no soporta esta característica $e', context,
                icon: Icons.language);

            try {
              final currentUrl = html.window.location.href;

              Share.share('Chekea esta comida $currentUrl');
            } catch (e) {
              if (e.toString().contains('AbortError')) return;
              showError(e);
            }
          },
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(6, 8, 6, 8),
            child: Icon(
              Icons.share,
              color: context.primaryColor,
            ),
          )),
    );
  }
}
