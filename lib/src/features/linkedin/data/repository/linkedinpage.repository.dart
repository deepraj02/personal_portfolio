import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_protfolio/helpers/enums.dart';
import 'package:personal_protfolio/src/features/linkedin/data/model/linkedin_page.model.dart';
import 'package:personal_protfolio/src/features/linkedin/data/repository/ilinkedinpage.repository.dart';
import 'package:personal_protfolio/src/shared/providers/shared.riverpod.dart';

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
