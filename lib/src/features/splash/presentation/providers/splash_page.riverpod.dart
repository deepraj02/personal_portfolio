import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/splash_page.viewmodel.dart';

final splashPageProvider = Provider((ref) {
  return SplashPageViewModel(ref);
});

