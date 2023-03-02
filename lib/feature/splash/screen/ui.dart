// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
    required this.applicationVersion,
    required this.loadLib,
    required this.launch,
    this.timeSplash,
  }) : super(key: key);

  final String applicationVersion;
  final Function(BuildContext context) loadLib;
  final Function(BuildContext context) launch;
  final Duration? timeSplash;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenPage(
        toLoadLib: loadLib,
        toLaunch: launch,
        timeSplash: timeSplash,
        applicationVersion: applicationVersion,
      ),
    );
  }
}

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({
    Key? key,
    required this.applicationVersion,
    required this.toLoadLib,
    required this.toLaunch,
    this.timeSplash,
  }) : super(key: key);

  final String applicationVersion;
  final Function(BuildContext context) toLoadLib;
  final Function(BuildContext context) toLaunch;
  final Duration? timeSplash;

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final Duration _defaultTime = const Duration(seconds: 2);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_load);
  }

  Future<void> _delay() async {
    await Future<void>.delayed(widget.timeSplash ?? _defaultTime);
  }

  Future<void> _loadLib() async {
    await widget.toLoadLib(context);
    debugPrint('SPLASH: Load lib has finish');
  }

  Future<void> _launch() async {
    await widget.toLaunch(context);
    debugPrint('SPLASH: Launch finish');
  }

  Future<void> _load(_) async {
    debugPrint(
      '''
SPLASH: Delay in ${widget.timeSplash?.inSeconds ?? _defaultTime.inSeconds} seconds''',
    );

    await Future.wait(<Future<void>>[_delay(), _loadLib()]);
    await _launch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(),
    );
  }
}
