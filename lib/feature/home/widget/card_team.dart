import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

class CardTeam extends StatelessWidget {
  const CardTeam({
    Key? key,
    required this.team,
    this.onTap,
  }) : super(key: key);

  final TeamResponse team;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(SSpacing.space8),
        margin: const EdgeInsets.symmetric(horizontal: SSpacing.space18),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: SColors.sGrey8.withOpacity(.04),
                spreadRadius: 12,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ]),
        child: Row(
          children: [
            SANetworkImage(
              height: 40,
              width: 40,
              url: team.strTeamBadge,
            ),
            const SizedBox(width: SSpacing.space18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SAText.subtitle2(text: team.strTeam ?? ''),
                  const SizedBox(height: SSpacing.space4),
                  SAText.caption2(
                    text: team.strAlternate ?? '',
                    maxLines: 2,
                  ),
                  const SizedBox(height: SSpacing.space2),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: SColors.sOrange,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SAText.caption1(
                          text: '${team.intFormedYear}',
                          color: SColors.sWhite,
                        ),
                      ),
                      const SizedBox(width: SSpacing.space8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: SColors.sPurple,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SAText.caption1(
                          text: '${team.strCountry}',
                          color: SColors.sWhite,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SANetworkImage(
              height: 40,
              width: 40,
              url: team.strTeamJersey,
            ),
          ],
        ),
      ),
    );
  }
}
