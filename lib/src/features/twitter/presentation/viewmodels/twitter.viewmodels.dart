import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repository/itwitterpage.repository.dart';

class TwitterPageViewModels {
  final Ref ref;
  final ITwitterPageRepository twitterRepository;

  TwitterPageViewModels(
    this.ref,
    this.twitterRepository,
  );
}
