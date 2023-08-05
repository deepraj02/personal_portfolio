
import '../models/welcome_page.model.dart';

abstract class IWelcomeRepository {
  Future<WelcomePageModel> getWelcomePageData();
}
