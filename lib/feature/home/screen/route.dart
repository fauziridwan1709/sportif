// Flutter imports:
// Package imports:
import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sportif/feature/home/blocs/team_bloc.dart';
import 'package:sportif/feature/home/screen/ui.dart';
import 'package:sportif/route/app_routes.dart';

part 'route.g.dart';

@TypedGoRoute<HomeRoute>(
  path: AppRoutes.homeScreen,
)
class HomeRoute extends GoRouteData {
  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) {
    return SMTransition(
      child: BlocProvider<TeamBloc>(
        create: (context) => getIt<TeamBloc>(),
        child: const HomeScreen(),
      ),
    );
  }
}
