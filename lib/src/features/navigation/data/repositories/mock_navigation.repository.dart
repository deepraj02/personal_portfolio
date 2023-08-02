import 'package:personal_protfolio/src/features/github/presentation/pages/github.page.dart';
import 'package:personal_protfolio/src/features/linkedin/presentation/pages/linkedin.page.dart';
import 'package:personal_protfolio/src/features/twitter/presentation/pages/twitter.page.dart';

import '../../../../config/icons.config.dart';
import '../../../welcome/presentation/pages/welcome.page.dart';
import '../models/left_navigation_item.dart';
import 'inavigation.repository.dart';

class MockNavigationRepository implements INavigationRepository {
  @override
  List<LeftNavigationItem> getDefaultNavItems() {
    return [
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.user,
          label: 'My Profile',
          route: WelcomePage.route,
          isSelected: true),
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.twitter,
          label: 'Twitter',
          route: TwitterPage.route,
          isSelected: false),
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.linkedin,
          label: 'LinkedIn',
          route: LinkedinPage.route,
          isSelected: false),
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.web,
          label: 'Web',
          route: '',
          isSelected: false),
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.github,
          label: 'Github',
          route: GithubPage.route,
          isSelected: false),
    ];
  }
}
