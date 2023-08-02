import 'package:flutter/material.dart';

class TwitterPage extends StatelessWidget {
  static const String route = '/twitter';
  const TwitterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Twitter Page"),
    );
  }
}
