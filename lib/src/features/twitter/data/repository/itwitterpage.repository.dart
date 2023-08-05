import '../models/twitter_page.model.dart';

abstract class ITwitterPageRepository {
  Future<TwitterPageModel> getTwitterData();
}
