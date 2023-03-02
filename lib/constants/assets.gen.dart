/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Montserrat-Bold.otf
  String get montserratBold => 'assets/fonts/Montserrat-Bold.otf';

  /// File path: assets/fonts/Montserrat-BoldItalic.otf
  String get montserratBoldItalic => 'assets/fonts/Montserrat-BoldItalic.otf';

  /// File path: assets/fonts/Montserrat-Italic.otf
  String get montserratItalic => 'assets/fonts/Montserrat-Italic.otf';

  /// File path: assets/fonts/Montserrat-Medium.otf
  String get montserratMedium => 'assets/fonts/Montserrat-Medium.otf';

  /// File path: assets/fonts/Montserrat-MediumItalic.otf
  String get montserratMediumItalic => 'assets/fonts/Montserrat-MediumItalic.otf';

  /// File path: assets/fonts/Montserrat-Regular.otf
  String get montserratRegular => 'assets/fonts/Montserrat-Regular.otf';

  /// File path: assets/fonts/Montserrat-SemiBold.otf
  String get montserratSemiBold => 'assets/fonts/Montserrat-SemiBold.otf';

  /// File path: assets/fonts/Montserrat-SemiBoldItalic.otf
  String get montserratSemiBoldItalic => 'assets/fonts/Montserrat-SemiBoldItalic.otf';

  /// File path: assets/fonts/MyTechanic-Icon.ttf
  String get myTechanicIcon => 'assets/fonts/MyTechanic-Icon.ttf';

  /// List of all assets
  List<String> get values => [
        montserratBold,
        montserratBoldItalic,
        montserratItalic,
        montserratMedium,
        montserratMediumItalic,
        montserratRegular,
        montserratSemiBold,
        montserratSemiBoldItalic,
        myTechanicIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/background.png
  AssetGenImage get background => const AssetGenImage('assets/images/png/background.png');

  /// File path: assets/images/png/connection-error.png
  AssetGenImage get connectionError => const AssetGenImage('assets/images/png/connection-error.png');

  /// File path: assets/images/png/logo-full-light.png
  AssetGenImage get logoFullLight => const AssetGenImage('assets/images/png/logo-full-light.png');

  /// File path: assets/images/png/logo-full-primary.png
  AssetGenImage get logoFullPrimary => const AssetGenImage('assets/images/png/logo-full-primary.png');

  /// File path: assets/images/png/logo-single-light.png
  AssetGenImage get logoSingleLight => const AssetGenImage('assets/images/png/logo-single-light.png');

  /// File path: assets/images/png/logo-single-primary.png
  AssetGenImage get logoSinglePrimary => const AssetGenImage('assets/images/png/logo-single-primary.png');

  /// File path: assets/images/png/motto.png
  AssetGenImage get motto => const AssetGenImage('assets/images/png/motto.png');

  /// File path: assets/images/png/second-background.png
  AssetGenImage get secondBackground => const AssetGenImage('assets/images/png/second-background.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [background, connectionError, logoFullLight, logoFullPrimary, logoSingleLight, logoSinglePrimary, motto, secondBackground];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/add-circle.svg
  SvgGenImage get addCircle => const SvgGenImage('assets/images/svg/add-circle.svg');

  /// File path: assets/images/svg/motto.svg
  SvgGenImage get motto => const SvgGenImage('assets/images/svg/motto.svg');

  /// List of all assets
  List<SvgGenImage> get values => [addCircle, motto];
}

class MyTechanicAssets {
  MyTechanicAssets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
