import 'package:design/design.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class BaseStateful<T extends StatefulWidget> extends State<T>
    with Diagnosticable
    implements BaseStateNormal {
  late GlobalKey<RefreshIndicatorState> refreshIndicatorKey;

  @override
  void initState() {
    super.initState();
    init();
    refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  }

  @override
  void dispose() {
    refreshIndicatorKey.currentState?.dispose();
    super.dispose();
  }

  ScaffoldAttribute buildAttribute();

  @override
  Widget build(BuildContext context) {
    final scaffoldAttribute = buildAttribute();
    Widget child = SizingInformationBuilder(
      builder: (_, sizeInfo) {
        if (sizeInfo.deviceType == DeviceScreenType.mobile) {
          return buildNarrowLayout(
            context,
            sizeInfo,
          );
        }
        return buildWideLayout(
          context,
          sizeInfo,
        );
      },
    );
    // should check whether scaffold need to remove or not
    if (!scaffoldAttribute.removeScaffold) {
      child = SMScaffold(
        attr: scaffoldAttribute,
        body: child,
        appBar: buildAppBar(context),
      );
    }
    return GestureDetector(
      onTap: () {
        // if (scaffoldAttribute.autoClearFocus) clearFocus(context);
      },
      child: WillPopScope(
        onWillPop: onBackPressed,
        child: child,
      ),
    );
  }
}
