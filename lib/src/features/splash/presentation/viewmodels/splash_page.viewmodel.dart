// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../github/presentation/providers/githubpage.riverpod.dart';
import '../../../linkedin/presentation/providers/linkedin_page.riverpod.dart';
import '../../../twitter/presentation/providers/twitter_page.riverpod.dart';
import '../../../welcome/presentation/providers/welcome_page.riverpod.dart';

class SplashPageViewModel {
  final Ref ref;
  SplashPageViewModel(this.ref);
  Future<bool> preloadPages() {
    Completer<bool> preloadCompleter = Completer();
    Future.wait([
      ref.read(welcomeProvider.future),
      ref.read(twitterProvider.future),
      ref.read(linkedinProvider.future),
      ref.read(githubProvider.future),
    ]).then((value) {
      preloadCompleter.complete(true);
    }).catchError((error) {
      preloadCompleter.completeError(error);
    }).onError((error, stackTrace) {
      preloadCompleter.completeError(error!);
    });
    return preloadCompleter.future;
  }
}
