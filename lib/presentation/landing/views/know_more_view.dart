import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class KnowMoreView extends StatefulWidget {
  final bool isSubmitting;
  final void Function(String) sendContactEmail;
  const KnowMoreView({
    required this.isSubmitting,
    required this.sendContactEmail,
    super.key,
  });

  @override
  State<KnowMoreView> createState() => KnowMoreViewState();
}

class KnowMoreViewState extends State<KnowMoreView> {
  String contactEmail = '';

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: 35, horizontal: context.getDouble(20, 50, 194)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: const Color(0xffFFFFFF),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12, blurRadius: 10, offset: Offset(0, 3)),
            ]),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              '¿Quieres saber más de nosotros?',
              textAlign: TextAlign.center,
              style: context.titleKnoeMoreFont,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: const Color(0xffFFFFFF),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                        offset: Offset(0, 1)),
                  ]),
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextField(
                        // controller: controller,
                        onChanged: (value) {
                          contactEmail = value;
                        },
                        textInputAction: TextInputAction.done,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          //  errorText: _showErrorMessage,
                          contentPadding: const EdgeInsets.all(20),
                          border: InputBorder.none,
                          hintText: 'Ingresa tu correo electrónico',
                          hintStyle: context.defaultButton?.getStyle(
                            color: const Color(0xff6B7380),
                            size: context.getDouble(12, 14, 16),
                          ),
                        ),

                        keyboardType: TextInputType.emailAddress,
                        onEditingComplete: () {},
                      )),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 60,
                      width: context.getDouble(120, 130, 140),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.currentTheme.primaryColor,
                        ),
                        onPressed: widget.isSubmitting
                            ? null
                            : () => widget.sendContactEmail(contactEmail),
                        child: Text(
                          'Suscribrirse',
                          style: context.defaultButton?.getStyle(
                            color: Colors.white,
                            size: context.getDouble(13, 14, 16),
                            weight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
