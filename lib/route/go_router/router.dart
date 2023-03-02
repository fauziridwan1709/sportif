// Flutter imports:
// Package imports:
// ignore_for_file: library_prefixes

import 'package:go_router/go_router.dart';
import 'package:sportif/feature/home/screen/route.dart' as home_route;
import 'package:sportif/route/app_routes.dart';

// Project imports:
GoRouter goRouter = GoRouter(
  initialLocation: AppRoutes.homeScreen,
  routes: [
    ...home_route.$appRoutes,
  ],
);
