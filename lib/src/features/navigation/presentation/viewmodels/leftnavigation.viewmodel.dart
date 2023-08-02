import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_protfolio/src/config/keys.config.dart';

import '../../data/models/left_navigation_item.dart';

class LeftNavigationViewModel extends StateNotifier<List<LeftNavigationItem>> {
  final Ref ref;
  LeftNavigationViewModel(List<LeftNavigationItem> items, this.ref)
      : super([]) {
    state = items;

    var item = state.first;
    selectNavItem(item);
  }

  void selectNavItem(LeftNavigationItem item) {
    if (item.route.isNotEmpty) {
      GoRouter.of(GlobalKeysConfig.tabNav.currentContext!).go(item.route);
    }

    state = [
      for (var element in state)
        element.copyWith(
          isSelected: item == element,
        )
    ];
  }
}
