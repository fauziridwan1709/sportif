// Dart imports:

// Package imports:
import 'package:country_code_picker/country_localizations.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_techanic/constants/supported_locals.dart';
import 'package:my_techanic/route/go_router/router.dart';
import 'package:my_techanic_core/my_techanic_core.dart';
import 'package:my_techanic_design_system/my_techanic_design_system.dart';
// Project imports:

void launchApp() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(
    const MyTechanicApp(),
  );
}

class MyTechanicApp extends StatefulWidget {
  const MyTechanicApp({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyTechanicAppState();
}

class _MyTechanicAppState extends State<MyTechanicApp> {
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
      theme: DefaultMyTechanicThemeData().light(),
      localizationsDelegates: const [
        CountryLocalizations.delegate,
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

typedef SessionBuilder = Widget Function(SessionState session);

class SessionWrapper extends StatelessWidget {
  const SessionWrapper({Key? key, required this.sessionBuilder})
      : super(key: key);

  final SessionBuilder sessionBuilder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(
      bloc: getIt<SessionCubit>(),
      builder: (context, state) {
        return sessionBuilder.call(state);
      },
    );
  }
}
