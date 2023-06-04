import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

void showSnackBar(
  String message,
  BuildContext context, {
  required IconData icon,
  Color? color,
}) {
  final backgroundColor = color ?? Theme.of(context).colorScheme.error;
  context.showFlash<bool>(
    duration: const Duration(seconds: 3),
    builder: (context, controller) {
      // ignore: inference_failure_on_instance_creation
      return FlashBar(
        controller: controller, behavior: FlashBehavior.floating,
        // brightness: Brightness.dark,b
        position: FlashPosition.top,
        backgroundColor: backgroundColor,
        dismissDirections: const [FlashDismissDirection.startToEnd],
        // horizontalDismissDirection: HorizontalDismissDirection.startToEnd,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        margin: const EdgeInsets.symmetric(
            vertical: kToolbarHeight + 8, horizontal: 16),
        // borderRadius: const BorderRadius.all(Radius.circular(8)),
        forwardAnimationCurve: Curves.easeOutBack,
        reverseAnimationCurve: Curves.slowMiddle,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        content: Text(message,
            style: context.interBold1Title?.copyWith(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        icon: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Icon(icon, color: Colors.white, size: 35),
        ),
        shouldIconPulse: false,
      );
    },
  );
}
