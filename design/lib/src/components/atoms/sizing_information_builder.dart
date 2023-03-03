import 'package:flutter/material.dart';

/// Supported screen type (for now).
enum DeviceScreenType {
  mobile,
  tablet,
}

class SizingInformation {
  /// Creates a [SizingInformation].
  SizingInformation({
    required this.orientation,
    required this.deviceType,
    required this.screenSize,
    required this.localWidgetSize,
  });

  /// Specify device orientation.
  final Orientation orientation;

  /// Specify device type.
  final DeviceScreenType deviceType;

  /// Holds screen size info.
  final Size screenSize;
  final Size localWidgetSize;

  @override
  String toString() {
    return '''
Orientation:$orientation DeviceType:$deviceType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize''';
  }
}

typedef SizeBuilder = Widget Function(
  BuildContext context,
  SizingInformation sizingInformation,
);

/// A sizing builder widget.
class SizingInformationBuilder extends StatelessWidget {
  /// Creates a [SizingInformationBuilder].
  const SizingInformationBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  /// Builder using [LayoutBuilder]
  final SizeBuilder builder;

  DeviceScreenType getDeviceScreenType(MediaQueryData mediaQuery) {
    final orientation = mediaQuery.orientation;
    var deviceWidth = 0.0;
    if (orientation == Orientation.landscape) {
      deviceWidth = mediaQuery.size.height;
    } else {
      deviceWidth = mediaQuery.size.width;
    }
    // TODO(paw): desktop version
    if (deviceWidth > 600) {
      return DeviceScreenType.tablet;
    }
    return DeviceScreenType.mobile;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        final sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          deviceType: getDeviceScreenType(mediaQuery),
          localWidgetSize: Size(constraints.maxWidth, constraints.maxHeight),
          screenSize: mediaQuery.size,
        );
        return builder(context, sizingInformation);
      },
    );
  }
}
