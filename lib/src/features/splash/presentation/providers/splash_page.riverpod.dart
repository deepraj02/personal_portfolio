import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/splash_page.viewmodel.dart';

final splashPageProvider = Provider((ref) {
  return SplashPageViewModel(ref);
});

final splashPageFutureProvider = FutureProvider<bool>((ref) async {
  var splashVM = ref.read(splashPageProvider);
  return splashVM.preloadPages();
});
