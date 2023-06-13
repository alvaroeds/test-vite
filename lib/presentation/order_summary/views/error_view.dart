import 'package:flutter/material.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

class SummaryErrorView extends StatelessWidget {
  final GlobalFailure<dynamic> failure;

  const SummaryErrorView(this.failure, {super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Ups! Algo salió mal'),
    );
  }
}
