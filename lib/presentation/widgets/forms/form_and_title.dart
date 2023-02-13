import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class FormAndTitle extends StatelessWidget {
  const FormAndTitle({
    required this.controller,
    required this.title,
    required this.hintText,
    super.key,
    this.paddingVertical,
    this.keyboardType,
    this.isPassword = false,
    this.onCompleted,
  });

  final TextEditingController controller;
  final String title;
  final String hintText;
  final double? paddingVertical;
  final TextInputType? keyboardType;

  final bool isPassword;
  final VoidCallback? onCompleted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: paddingVertical ?? 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.defaultSubtitle?.getStyle(
              color: const Color(0xff40454D),
              size: 18,
              weight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: controller,
            textInputAction:
                isPassword ? TextInputAction.done : TextInputAction.next,
            style: const TextStyle(color: Colors.black),
            obscureText: isPassword,
            decoration: InputDecoration(
              //  errorText: _showErrorMessage,
              contentPadding: const EdgeInsets.all(12),

              border: const OutlineInputBorder(),
              hintText: hintText,
            ),
            //        maxLength: EmailAddress.maxLength,
            keyboardType: keyboardType,
            onEditingComplete: onCompleted,
          ),
        ],
      ),
    );
  }
}
