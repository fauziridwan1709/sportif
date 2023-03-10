import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:sportif/feature/home/blocs/team_bloc.dart';
import 'package:sportif/feature/home/screen/route.dart';
import 'package:sportif/feature/home/widget/card_team.dart';
import 'package:sportif/feature/team_detail/screen/route.dart';
import 'package:sportif/route/go_router/router.dart';

import 'contract.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseStateful<HomeScreen> with HomeContract {
  late PagingController<int, TeamResponse> pagingController;

  @override
  void init() {
    pagingController = PagingController<int, TeamResponse>(firstPageKey: 1);
    pagingController.addPageRequestListener(onRequest);
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
            child: SAText.h3(
              text: 'Sportif',
            ),
          ),
        ),
      );

  @override
  ScaffoldAttribute buildAttribute() {
    return ScaffoldAttribute(
      backgroundColor: SColors.sGrey100,
    );
  }

  @override
  Widget buildNarrowLayout(BuildContext context, SizingInformation sizeInfo) {
    return BlocListener<TeamBloc, TeamStates>(
      listener: _teamBlocListener,
      child: PagedListView<int, TeamResponse>.separated(
        pagingController: pagingController,
        separatorBuilder: (_, __) {
          return const SizedBox(height: SSpacing.space8);
        },
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (BuildContext context, TeamResponse item, int index) {
            return CardTeam(
              team: item,
              onTap: () {
                final route = TeamDetailRoute($extra: item);
                goRouter.push(
                  route.location,
                  extra: route,
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  Widget buildWideLayout(BuildContext context, SizingInformation sizeInfo) {
    return buildNarrowLayout(context, sizeInfo);
  }

  @override
  Future<bool> onBackPressed() async {
    return true;
  }

  void onRequest(int pageKey) {
    context.read<TeamBloc>().add(
          GetAllTeamEvent(
            page: pageKey,
          ),
        );
  }

  Future<void> onRefresh() async {
    pagingController.refresh();
    context.read<TeamBloc>().state.mapOrNull(
      failure: (state) {
        onRequest.call(1);
      },
    );
  }

  void _teamBlocListener(BuildContext context, TeamStates state) {
    state.mapOrNull(
      loaded: (state) {
        // hardcoded page size
        final pageSize = 10;
        final isLastPage = state.teams.length < pageSize;
        if (isLastPage) {
          pagingController.appendLastPage(state.teams);
        } else {
          final currentPage =
              ((pagingController.itemList?.length ?? 0) ~/ pageSize) + 1;
          final nextPageKey = currentPage + 1;
          pagingController.appendPage(state.teams, nextPageKey);
        }
      },
    );
  }
}
