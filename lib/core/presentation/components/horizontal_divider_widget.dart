import 'package:flutter/material.dart';

class HorizontalDividerWidget extends StatelessWidget {
  const HorizontalDividerWidget({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFFFC629),
      ),
    );
  }
}
