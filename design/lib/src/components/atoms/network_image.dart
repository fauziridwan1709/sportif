import 'package:cached_network_image/cached_network_image.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SANetworkImage extends StatelessWidget {
  const SANetworkImage({
    Key? key,
    this.url,
    this.placeHolder,
    this.borderRadius,
    this.shape = BoxShape.rectangle,
    this.fit,
    this.height,
    this.width,
  }) : super(key: key);

  final String? url;
  final Widget? placeHolder;
  final BorderRadius? borderRadius;
  final BoxShape shape;
  final BoxFit? fit;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final defaultPlaceHolder = Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        color: SColors.sGrey300,
      ),
    );
    if (url?.isEmpty ?? true) return placeHolder ?? defaultPlaceHolder;
    return CachedNetworkImage(
      imageUrl: url ?? '',
      imageBuilder: (_, imageProvider) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(12),
          image: DecorationImage(
            image: imageProvider,
            fit: fit ?? BoxFit.cover,
          ),
        ),
      ),
      placeholder: (_, __) => placeHolder ?? defaultPlaceHolder,
      errorWidget: (_, __, dynamic ___) =>
          placeHolder ??
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
              color: SColors.sGrey300,
            ),
          ),
    );
  }
}
