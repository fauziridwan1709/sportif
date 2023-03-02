import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SScaffold extends Scaffold {
  SScaffold({
    ScaffoldAttribute? attr,
    PreferredSizeWidget? appBar,
    Widget? body,
  }) : super(
          key: attr!.scaffoldKey,
          resizeToAvoidBottomInset: attr.isResizable,
          backgroundColor: attr.backgroundColor,
          floatingActionButton: attr.fab,
          floatingActionButtonLocation: attr.fabLocation,
          appBar: appBar,
          body: body,
          bottomNavigationBar: attr.bottomNavigation,
          extendBodyBehindAppBar: attr.extendBodyBehindAppBar,
        );
}

/// Data from [SScaffold] accessible from its children.
class ScaffoldAttribute {
  /// Creates a [ScaffoldAttribute].
  ScaffoldAttribute({
    this.scaffoldKey,
    this.backgroundColor = SColors.sWhite,
    this.isResizable = true,
    this.fabLocation,
    this.fab,
    this.bottomNavigation,
    this.removeScaffold = false,
    this.extendBodyBehindAppBar = false,
    this.autoClearFocus = false,
  });

  GlobalKey<ScaffoldState>? scaffoldKey;
  Color? backgroundColor;

  /// Whether layout is interactive to resize.
  ///
  /// Defaults to true.
  bool isResizable;
  FloatingActionButtonLocation? fabLocation;
  Widget? fab;
  Widget? bottomNavigation;
  bool removeScaffold;
  bool extendBodyBehindAppBar;
  bool autoClearFocus;
}
