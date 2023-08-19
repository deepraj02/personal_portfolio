import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../helpers/enums.dart';
import '../model/linkedin_page.model.dart';
import 'ilinkedinpage.repository.dart';
import '../../../../shared/providers/shared.riverpod.dart';

class LinkedinRepository implements ILinkedinPageRepository {
  final Ref ref;

  LinkedinRepository(this.ref);
  @override
  Future<LinkedinPageModel> getLinkedinData() {
    return ref.read(dbProvider).getPageDataFromDB(
          LinkedinPageModel.fromDatabase,
          DatabaseCollections.pageContent.name,
          DatabaseDocs.linkedInPage.name,
        );
  }
}
