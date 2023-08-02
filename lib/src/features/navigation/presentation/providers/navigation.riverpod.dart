import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_protfolio/src/features/navigation/data/repositories/inavigation.repository.dart';
import 'package:personal_protfolio/src/features/navigation/data/repositories/mock_navigation.repository.dart';

import '../../data/models/left_navigation_item.dart';
import '../viewmodels/leftnavigation.viewmodel.dart';

final navigationRepositoryProvider = Provider<INavigationRepository>((ref) {
  return MockNavigationRepository();
});

final navigationItemsProvider = Provider<List<LeftNavigationItem>>((ref) {
  return ref.read(navigationRepositoryProvider).getDefaultNavItems();
});

final navigationItemsViewModelProvider =
    StateNotifierProvider<LeftNavigationViewModel, List<LeftNavigationItem>>(
        (ref) {
  var items = ref.read(navigationItemsProvider);
  return LeftNavigationViewModel(items, ref);
});
