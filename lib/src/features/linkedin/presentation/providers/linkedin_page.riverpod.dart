import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repository/ilinkedinpage.repository.dart';
import '../../data/repository/mocklinkedinpage.repository.dart';
import '../viewmodels/linkedin.viewmodels.dart';

final linkedinRepositoryProvider = Provider<ILinkedinPageRepository>((ref) {
  return MockLinkedinRepository();
});

final linkedinViewModelProvider = Provider<LinkedinPageViewModels>((ref) {
  var repository = ref.read(linkedinRepositoryProvider);
  return LinkedinPageViewModels(ref: ref, linkedinRepository: repository);
});

final linkedinProvider = FutureProvider((ref) {
  var linkedinVM = ref.read(linkedinViewModelProvider);
  return linkedinVM.getLinkedinData();
});
