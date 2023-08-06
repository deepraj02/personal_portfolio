import 'package:personal_protfolio/src/config/icons.config.dart';

import '../models/twitter_page.model.dart';
import 'itwitterpage.repository.dart';

class MockTwitterRepository implements ITwitterPageRepository {
  @override
  Future<TwitterPageModel> getTwitterData() {
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        return TwitterPageModel(
          icon: PersonalPortfolioIcons.twitter,
          title: "Follow Me",
          subTitle: "On Twitter",
          handle: "@Deepraj022",
          url: "https://twitter.com/Deepraj022",
        );
      },
    );
  }
}
