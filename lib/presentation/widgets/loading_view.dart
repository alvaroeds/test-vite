import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const SizedBox(
          height: 200,
          width: 200,
          child: CircularProgressIndicator(),
        ),
        Center(
          child: Image.asset('assets/logo.png', height: 75, width: 75),
        ),
      ],
    );
  }
}
