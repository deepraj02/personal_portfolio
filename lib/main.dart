import 'package:flutter/material.dart';
import 'package:personal_protfolio/src/routes/route_config.dart';

void main() {
  runApp(const Damn());
}

class Damn extends StatelessWidget {
  const Damn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Product Sans',
      ),
      routeInformationProvider: AppRoutes.router.routeInformationProvider,
      routeInformationParser: AppRoutes.router.routeInformationParser,
      routerDelegate: AppRoutes.router.routerDelegate,
    );
  }
}
