// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

export 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

extension PagingExtension<K> on PagingController<int, K> {
  void rebuild() {
    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
    notifyListeners();
  }
}

enum PagedListViewType {
  sliver,
  listview,
  // gridview,
}

mixin SingleConstrainedInfiniteScrollPagination<T> {
  void onRequest(int pageKey);

  Future<void> onRefresh();

  Widget buildPagedListView({
    required PagingController<int, T> pagingController,
    required ItemWidgetBuilder<T> itemBuilder,
    PagedListViewType type = PagedListViewType.listview,
    IndexedWidgetBuilder? separatorBuilder,
    WidgetBuilder? firstPageProgressIndicatorBuilder,
    WidgetBuilder? newPageProgressIndicatorBuilder,
    WidgetBuilder? noItemsFoundIndicatorBuilder,
    WidgetBuilder? noMoreItemsIndicatorBuilder,
    WidgetBuilder? firstPageErrorIndicatorBuilder,
    WidgetBuilder? newPageErrorIndicatorBuilder,
    bool animateTransitions = false,
    Duration transitionDuration = const Duration(milliseconds: 400),
    EdgeInsetsGeometry? padding,
    ScrollController? scrollController,
    bool isShrinkWrap = false,
  }) {
    switch (type) {
      case PagedListViewType.sliver:
        // TODO(any): use [PagedSliverList]
        return ListView();
      case PagedListViewType.listview:
        return PagedListView<int, T>.separated(
          padding: padding,
          scrollController: scrollController,
          pagingController: pagingController,
          builderDelegate: PagedChildBuilderDelegate(
            itemBuilder: itemBuilder,
            firstPageProgressIndicatorBuilder:
                firstPageProgressIndicatorBuilder,
            newPageProgressIndicatorBuilder: newPageProgressIndicatorBuilder,
            noItemsFoundIndicatorBuilder: noItemsFoundIndicatorBuilder,
            noMoreItemsIndicatorBuilder: noMoreItemsIndicatorBuilder,
            firstPageErrorIndicatorBuilder: firstPageErrorIndicatorBuilder,
            newPageErrorIndicatorBuilder: newPageErrorIndicatorBuilder,
            animateTransitions: animateTransitions,
            transitionDuration: transitionDuration,
          ),
          separatorBuilder: separatorBuilder ??
              (BuildContext context, int index) => const SizedBox(height: 20),
          shrinkWrap: isShrinkWrap,
        );
    }
  }
}
