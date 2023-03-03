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
      statusBarIconBrightness: Brightness.dark,
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
      title: 'Sportif App',
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
        return MediaQuery(
          data: data.copyWith(textScaleFactor: textScaleFactor),
          child: child ?? const SizedBox(),
        );
      },
    );
  }
}
