// Flutter imports:
// Package imports:
import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sportif/feature/team_detail/blocs/team_detail_bloc.dart';
import 'package:sportif/feature/team_detail/screen/ui.dart';

class TeamDetailRoute extends GoRouteData {
  TeamDetailRoute({this.$extra});

  final TeamResponse? $extra;
  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) {
    return SMTransition(
      child: BlocProvider<TeamDetailBloc>(
        create: (context) => getIt<TeamDetailBloc>(),
        child: TeamDetailScreen(team: $extra!),
      ),
    );
  }
}
