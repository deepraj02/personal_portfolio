import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/twitter_page.model.dart';
import '../../data/repository/itwitterpage.repository.dart';

class TwitterPageViewModels {
  final Ref ref;
  final ITwitterPageRepository twitterRepository;

  TwitterPageViewModels(
    this.ref,
    this.twitterRepository,
  );
    Future<TwitterPageModel> getTwitterData() async {
    var twitterPageData = await twitterRepository.getTwitterData();
    return twitterPageData;
  }
}
