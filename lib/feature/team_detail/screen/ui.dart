import 'package:design/design.dart';
import 'package:flutter/material.dart';

import 'contract.dart';

class TeamDetailScreen extends StatefulWidget {
  const TeamDetailScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

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
    return SizedBox();
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
