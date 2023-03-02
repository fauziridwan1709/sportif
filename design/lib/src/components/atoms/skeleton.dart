import 'package:flutter/material.dart';

enum SkeletonType {
  rectangle,
  stadium,
  circle,
}

class MSSkeleton extends StatelessWidget {
  const MSSkeleton({
    Key? key,
    required this.width,
    required this.height,
    this.type = SkeletonType.rectangle,
    this.color,
  }) : super(key: key);

  final double width;
  final double height;
  final SkeletonType type;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: width,
        minWidth: width / 2,
        minHeight: height,
      ),
      decoration: _mapDecoration,
    );
  }

  Decoration get _mapDecoration {
    switch (type) {
      case SkeletonType.rectangle:
        return BoxDecoration(
          color: color ?? Colors.grey.shade300,
          borderRadius: BorderRadius.circular(6),
        );
      case SkeletonType.stadium:
        return ShapeDecoration(
          color: color ?? Colors.grey.shade300,
          shape: const StadiumBorder(),
        );
      case SkeletonType.circle:
        return BoxDecoration(
          color: color ?? Colors.grey.shade300,
          shape: BoxShape.circle,
        );
    }
  }
}
