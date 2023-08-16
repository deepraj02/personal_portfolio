import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repository/ilinkedinpage.repository.dart';
import '../../data/repository/linkedinpage.repository.dart';
import '../viewmodels/linkedin.viewmodels.dart';

final linkedinRepositoryProvider = Provider<ILinkedinPageRepository>((ref) {
  return LinkedinRepository(ref);
});

final linkedinViewModelProvider = Provider<LinkedinPageViewModels>((ref) {
  var repository = ref.read(linkedinRepositoryProvider);
  return LinkedinPageViewModels(ref: ref, linkedinRepository: repository);
});

final linkedinProvider = FutureProvider((ref) {
  var linkedinVM = ref.read(linkedinViewModelProvider);
  return linkedinVM.getLinkedinData();
});
