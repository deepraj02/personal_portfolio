import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/shared.riverpod.dart';

class PageColor extends ConsumerWidget {
  const PageColor({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var pageGradient = ref.watch(pageColorProvider);

    return Container(
      decoration: BoxDecoration(
        gradient: pageGradient
      )
    );
  }
}