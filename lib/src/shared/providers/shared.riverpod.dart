import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_protfolio/src/config/colors_config.dart';

import '../../features/welcome/presentation/pages/welcome.page.dart';

final pageColorProvider = StateProvider<LinearGradient>((ref) {
  return TheColors.pageColor[WelcomePage.route]!;
});
