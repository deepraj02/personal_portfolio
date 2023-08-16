import '../../../../config/icons.config.dart';
import '../model/linkedin_page.model.dart';
import 'ilinkedinpage.repository.dart';

class MockLinkedinRepository implements ILinkedinPageRepository {
  @override
  Future<LinkedinPageModel> getLinkedinData() {
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        return LinkedinPageModel(
          icon: PersonalPortfolioIcons.linkedin,
          title: "Let's",
          handle: "On Linkedin",
          url: "https://linkedin.co/in/deeprajbaidya",
          subTitle: 'Connect',
        );
      },
    );
  }
}
