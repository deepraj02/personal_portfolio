import 'package:personal_protfolio/src/config/icons.config.dart';
import 'package:personal_protfolio/src/features/github/data/model/githubpage.models.dart';

import 'igithubpage.repository.dart';

class MockGithubRepository implements IGithubPageRepository {
  @override
  Future<GitHubPageModel> getGithubPageData() {
    return Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () {
        return GitHubPageModel(
          icon: PersonalPortfolioIcons.github,
          heading: "Check Out\nMy Repos",
          subHeading: "On Github",
          url: "https://github.com/deepraj02",
        );
      },
    );
  }
}
