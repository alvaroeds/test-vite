import 'package:flutter/material.dart';

class CycleWrapper extends StatefulWidget {
  final VoidCallback? onDispose;
  final VoidCallback? onInit;
  final Widget child;
  const CycleWrapper(
      {required this.child, super.key, this.onDispose, this.onInit});

  @override
  State<CycleWrapper> createState() => _CycleWrapperState();
}

class _CycleWrapperState extends State<CycleWrapper> {
  @override
  void initState() {
    widget.onInit?.call();
    super.initState();
  }

  @override
  void dispose() {
    widget.onDispose?.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
