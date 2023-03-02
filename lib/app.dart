// Dart imports:

// Package imports:
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sportif/route/go_router/router.dart';

import 'constants/supported_locals.dart';
// Project imports:

void launchApp() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(
    const SportifApp(),
  );
}

class SportifApp extends StatefulWidget {
  const SportifApp({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SportifAppState();
}

class _SportifAppState extends State<SportifApp> {
  final UniqueKey _key = UniqueKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      key: _key,
      title: 'My Techanic Super Apps',
      routerConfig: goRouter,
      supportedLocales: supportedLocale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: (context, child) {
        final MediaQueryData data = MediaQuery.of(context);
        double textScaleFactor = 1;
        if (data.size.height < 600) {
          textScaleFactor = 0.75;
        }
        final screenHost = _ScreenHost(child: child);
        return MediaQuery(
          data: data.copyWith(textScaleFactor: textScaleFactor),
          child: screenHost,
        );
      },
    );
  }
}

class _ScreenHost extends StatelessWidget {
  const _ScreenHost({
    Key? key,
    this.child,
  }) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return child ?? const SizedBox.shrink();
  }
}
