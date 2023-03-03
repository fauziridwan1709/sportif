import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SectionDivider extends StatelessWidget {
  const SectionDivider({
    Key? key,
    this.height = 12,
    this.color,
  }) : super(key: key);

  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: color ?? SColors.sGrey200,
    );
  }
}
