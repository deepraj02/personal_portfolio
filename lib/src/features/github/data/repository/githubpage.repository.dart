import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_protfolio/helpers/enums.dart';
import 'package:personal_protfolio/src/features/github/data/repository/igithubpage.repository.dart';
import 'package:personal_protfolio/src/shared/providers/shared.riverpod.dart';

import '../model/githubpage.models.dart';

class GithubRepository implements IGithubPageRepository {
  final Ref ref;

  GithubRepository(this.ref);
  @override
  Future<GitHubPageModel> getGithubPageData() {
    return ref.read(dbProvider).getPageDataFromDB(
          GitHubPageModel.fromDatabase,
          DatabaseCollections.pageContent.name,
          DatabaseDocs.githubPage.name ,
        );
  }
}
