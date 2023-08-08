import '../model/linkedin_page.model.dart';

abstract class ILinkedinPageRepository {
  Future<LinkedinPageModel> getLinkedinData();
}
