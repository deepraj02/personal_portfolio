// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/model/linkedin_page.model.dart';

import '../../data/repository/ilinkedinpage.repository.dart';

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
