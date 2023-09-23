import 'package:flutter/material.dart';

import '../../../../../helpers/responsive_ui_helper.dart';
import '../../../../config/colors_config.dart';
import '../../../../config/keys.config.dart';
import '../../../../shared/widgets/pagecolor.dart';
import '../../../navigation/presentation/responsive/navigation_responsive.config.dart';
import '../../../navigation/presentation/widgets/left_navigation.dart';
import '../../../navigation/presentation/widgets/side_navigation_drawer.dart';

class PortfolioMainPage extends StatelessWidget {
  static const String route = '/main';
  final Widget? child;
  const PortfolioMainPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: GlobalKeysConfig.mainScaffold,
        drawer: const SideNavigationDrawer(),
        backgroundColor: TheColors.mainBlue,
        body: Builder(builder: (context) {
          var navUIConfig = NavigationResponsiveConfig
              .responsiveUI[ResponsiveUIHelper.getDeviceType(context)]!;

          if (!navUIConfig.showSidebar &&
              GlobalKeysConfig.mainScaffold.currentState!.isDrawerOpen) {
            GlobalKeysConfig.mainScaffold.currentState!.closeDrawer();
          }
          return Stack(
            children: [
              const PageColor(),
              Center(child: child),
              const Align(
                alignment: Alignment.centerLeft,
                child: LeftNavigation(),
              ),
            ],
          );
        }));
  }
}
