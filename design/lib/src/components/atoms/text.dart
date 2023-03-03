import 'package:design/design.dart';
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

  const SAText.h1({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = h1,
  }) : super(key: key);

  const SAText.h2({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = h2,
  }) : super(key: key);

  const SAText.h3({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = h3,
  }) : super(key: key);

  const SAText.h4({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = h4,
  }) : super(key: key);

  const SAText.h5({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = h5,
  }) : super(key: key);

  const SAText.h6({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = h6,
  }) : super(key: key);

  const SAText.subtitle1({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = subtitle1,
  }) : super(key: key);

  const SAText.subtitle2({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = subtitle2,
  }) : super(key: key);

  const SAText.body1({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = body1,
  }) : super(key: key);

  const SAText.body2({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = body2,
  }) : super(key: key);

  const SAText.caption1({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = caption1,
  }) : super(key: key);

  const SAText.caption2({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = caption2,
  }) : super(key: key);

  const SAText.text1({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = text1,
  }) : super(key: key);

  const SAText.text2({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = text2,
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
