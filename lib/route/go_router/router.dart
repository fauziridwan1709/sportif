// Flutter imports:
// Package imports:
// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_techanic/features/auth/enter_pin/screen/route.dart'
    as enterPinRoute;
import 'package:my_techanic/features/auth/input_name/screen/route.dart'
    as inputNameRoute;
import 'package:my_techanic/features/auth/login/screen/route.dart'
    as loginRoute;
import 'package:my_techanic/features/auth/otp_register/screen/route.dart'
    as authRoute;
import 'package:my_techanic/features/dashboard/screen/ui.dart';
import 'package:my_techanic/features/dummy/screen/route.dart' as dummyRoute;
import 'package:my_techanic/features/editor/story/screen/route.dart'
    as editorStory;
import 'package:my_techanic/features/favourite/screen/route.dart'
    as favouriteRoute;
import 'package:my_techanic/features/home/screen/route.dart' as homeRoute;
import 'package:my_techanic/features/profile/edit_phone_number//screen/route.dart'
    as editPhoneNumberRoute;
import 'package:my_techanic/features/profile/edit_profile//screen/route.dart'
    as editProfileRoute;
import 'package:my_techanic/features/profile/my_profile/screen/route.dart'
    as myProfileRoute;
import 'package:my_techanic/features/simulation/blocs/simulation_cubit.dart';
import 'package:my_techanic/features/simulation/screen/route.dart'
    as simulationRoute;
// import 'package:my_techanic/features/transaction/transaction_detail/screen/route.dart'
//     as transactionDetailRoute;
import 'package:my_techanic/features/transaction/transactions/screen/route.dart'
    as transactionsRoute;
import 'package:my_techanic/route/app_routes.dart';
import 'package:my_techanic_core/my_techanic_core.dart';

// Project imports:
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();
GoRouter goRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoutes.homeScreen,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return DashboardScreen(child: child);
      },
      routes: <RouteBase>[
        ...homeRoute.$appRoutes,
        ...transactionsRoute.$appRoutes,
        ...favouriteRoute.$appRoutes,
        ...myProfileRoute.$appRoutes,
      ],
    ),
    ...dummyRoute.$appRoutes,
    ...loginRoute.$appRoutes,
    ...enterPinRoute.$appRoutes,
    ...simulationRoute.$appRoutes,
    ...authRoute.$appRoutes,
    ...inputNameRoute.$appRoutes,
    ...editProfileRoute.$appRoutes,
    ...editPhoneNumberRoute.$appRoutes,
    ...editorStory.$appRoutes,
  ],
  observers: <NavigatorObserver>[
    GoRouterNavigationObserver(),
    // FirebaseAnalyticsObserver(analytics: analytics)
  ],

  // errorBuilder: (c, s) => ErrorRoute(exception: s.error!).build(c),
);

class GoRouterNavigationObserver extends NavigatorObserver {
  final simulationCubit = getIt<SimulationCubit>();
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _updateRoute();
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _updateRoute();
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _updateRoute();
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    _updateRoute();
  }

  void _updateRoute() {
    print('update route');
    print(goRouter.location);
    simulationCubit.updateRoute(getRouteFromRouteLocation(goRouter.location));
  }
}
