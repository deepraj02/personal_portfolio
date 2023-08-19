import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../helpers/enums.dart';
import 'igithubpage.repository.dart';
import '../../../../shared/providers/shared.riverpod.dart';

import '../model/githubpage.models.dart';

class GithubRepository implements IGithubPageRepository {
  final Ref ref;

  GithubRepository(this.ref);
  @override
  Future<GitHubPageModel> getGithubPageData() {
    return ref.read(dbProvider).getPageDataFromDB(
          GitHubPageModel.fromDatabase,
          DatabaseCollections.pageContent.name,
          DatabaseDocs.githubPage.name,
        );
  }
}
