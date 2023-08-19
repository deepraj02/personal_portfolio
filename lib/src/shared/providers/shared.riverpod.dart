import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../config/colors_config.dart';

import '../../features/welcome/presentation/pages/welcome.page.dart';
import '../repositories/database_provider.dart';
import '../repositories/idb_provider.dart';

final pageColorProvider = StateProvider<LinearGradient>((ref) {
  return TheColors.pageColor[WelcomePage.route]!;
});

final firebaseDbInstanceProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final dbProvider = Provider<IDBProvider>((ref) {
  return DatabaseProvider(ref);
});
