// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_protfolio/src/features/linkedin/data/model/linkedin_page.model.dart';

import 'package:personal_protfolio/src/features/linkedin/data/repository/ilinkedinpage.repository.dart';

class LinkedinPageViewModels {
  final Ref ref;
  final ILinkedinPageRepository linkedinRepository;
  LinkedinPageViewModels({
    required this.ref,
    required this.linkedinRepository,
  });
  Future<LinkedinPageModel> getLinkedinData() async {
    var twitterPageData = await linkedinRepository.getLinkedinData();
    return twitterPageData;
  }
}
