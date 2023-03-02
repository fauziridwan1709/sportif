import 'package:design/src/base/colors.dart';
import 'package:flutter/material.dart';

class SAText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign textAlign;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;

  const SAText({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          (style ?? const TextStyle(color: SColors.sTextLightPrimary)).copyWith(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        letterSpacing: letterSpacing,
      ),
      overflow: overflow ?? TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
