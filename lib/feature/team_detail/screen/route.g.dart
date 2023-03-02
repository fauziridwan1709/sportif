// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $teamDetailRoute,
    ];

GoRoute get $teamDetailRoute => GoRouteData.$route(
      path: '/home/team/:id',
      factory: $TeamDetailRouteExtension._fromState,
    );

extension $TeamDetailRouteExtension on TeamDetailRoute {
  static TeamDetailRoute _fromState(GoRouterState state) => TeamDetailRoute(
        id: state.params['id']!,
      );

  String get location => GoRouteData.$location(
        '/home/team/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);
}
