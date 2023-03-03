import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

enum SSliderIndicator { smallDot, bigDot }

class SASliderIndicator extends StatelessWidget {
  final int paginationIndex; // 0 ~ (count-1)
  final int paginationTotalCount;
  final SSliderIndicator paginationDot;
  const SASliderIndicator({
    required this.paginationIndex,
    required this.paginationTotalCount,
    this.paginationDot = SSliderIndicator.smallDot,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: paginationIndex,
      count: paginationTotalCount,
      effect: paginationDot == SSliderIndicator.smallDot
          ? const WormEffect(
              dotWidth: 8,
              dotHeight: 8,
              spacing: 10,
              activeDotColor: SColors.sPrimary,
              dotColor: SColors.sPrimaryLighter,
            )
          : const ExpandingDotsEffect(
              expansionFactor: 2.25,
              dotWidth: 8,
              dotHeight: 8,
              spacing: 10,
              activeDotColor: SColors.sPrimary,
              dotColor: SColors.sPrimaryLighter,
            ),
    );
  }
}
