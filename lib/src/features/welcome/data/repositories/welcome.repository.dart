import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_protfolio/helpers/enums.dart';
import 'package:personal_protfolio/src/features/welcome/data/models/welcome_page.model.dart';
import 'package:personal_protfolio/src/features/welcome/data/repositories/iwelcome.repository.dart';
import 'package:personal_protfolio/src/shared/providers/shared.riverpod.dart';

class WelcomeRepository implements IWelcomeRepository {
  final Ref ref;
  WelcomeRepository(this.ref);

  @override
  Future<WelcomePageModel> getWelcomePageData() {
    return ref.read(dbProvider).getPageDataFromDB(
          WelcomePageModel.fromDatabase,
          DatabaseCollections.pageContent.name,
          DatabaseDocs.welcomePage.name,
        );
  }
}
