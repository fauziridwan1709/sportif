import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:sportif/feature/home/widget/card_team.dart';
import 'package:sportif/route/go_router/router.dart';

import 'contract.dart';

class TeamDetailScreen extends StatefulWidget {
  const TeamDetailScreen({
    Key? key,
    required this.team,
  }) : super(key: key);

  final TeamResponse team;

  @override
  _TeamDetailScreenState createState() => _TeamDetailScreenState();
}

class _TeamDetailScreenState extends BaseStateful<TeamDetailScreen>
    with TeamDetailContract {
  @override
  void init() {}

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => null;

  @override
  ScaffoldAttribute buildAttribute() {
    return ScaffoldAttribute(
      backgroundColor: SColors.sGrey100,
    );
  }

  @override
  Widget buildNarrowLayout(BuildContext context, SizingInformation sizeInfo) {
    return ListView(
      children: [
        SizedBox(
          height: 230,
          child: Stack(
            children: [
              Container(
                height: 160,
                decoration: const BoxDecoration(
                  color: Color(0xFF37003C),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(36)),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 100,
                child: CardTeam(team: widget.team),
              ),
              Positioned(
                left: 0,
                right: 12,
                top: 20,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        goRouter.pop();
                      },
                      icon: const Icon(Icons.arrow_back_outlined),
                      color: SColors.sWhite,
                    ),
                    const SAText.h5(
                      text: 'Team Detail',
                      color: SColors.sWhite,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SAText.caption2(
                text: widget.team.strDescriptionEN ?? '',
                maxLines: 200,
              ),
              const SizedBox(height: 20),
              const SAText.h6(
                text: 'Stadium',
              ),
              const SizedBox(height: 4),
              SAText.caption2(
                text: widget.team.strStadiumLocation ?? '',
              ),
              const SizedBox(height: 12),
              SANetworkImage(
                height: 160,
                url: widget.team.strStadiumThumb,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 12),
              SAText.caption2(
                text: widget.team.strStadiumDescription ?? '',
                maxLines: 200,
              ),
            ],
          ),
        ),
      ],
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
}
