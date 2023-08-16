// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_protfolio/helpers/enums.dart';
import 'package:personal_protfolio/src/features/twitter/data/models/twitter_page.model.dart';

import 'package:personal_protfolio/src/features/twitter/data/repository/itwitterpage.repository.dart';
import 'package:personal_protfolio/src/shared/providers/shared.riverpod.dart';

class TwitterRepository implements ITwitterPageRepository {
  final Ref ref;

  TwitterRepository(this.ref);
 

  @override
  Future<TwitterPageModel> getTwitterData() {
    return ref.read(dbProvider).getPageDataFromDB(
          TwitterPageModel.fromDatabase,
          DatabaseCollections.pageContent.name,
          DatabaseDocs.twitterPage.name,
        );
  }
}
