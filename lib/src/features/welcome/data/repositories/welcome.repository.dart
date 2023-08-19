import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../helpers/enums.dart';
import '../models/welcome_page.model.dart';
import 'iwelcome.repository.dart';
import '../../../../shared/providers/shared.riverpod.dart';

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
