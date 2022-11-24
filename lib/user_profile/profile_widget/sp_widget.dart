import 'package:flutter/material.dart';

class SeparatorWidget extends StatelessWidget {
  final double w;
  const SeparatorWidget({super.key, required this.w});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      width: w,
      height: 11.0,
    );
  }
}
