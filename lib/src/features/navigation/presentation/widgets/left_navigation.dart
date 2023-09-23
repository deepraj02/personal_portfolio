import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../helpers/responsive_ui_helper.dart';
import '../providers/navigation.riverpod.dart';
import '../responsive/navigation_responsive.config.dart';
import 'hamburger_menu.dart';
import 'left_navigation_item_tile.dart';

class LeftNavigation extends ConsumerWidget {
  const LeftNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var uiConfig = NavigationResponsiveConfig
        .responsiveUI[ResponsiveUIHelper.getDeviceType(context)]!;

    var navItems = ref.watch(navigationItemsViewModelProvider);

    return Visibility(
      visible: uiConfig.showSidebar,
      replacement: const HamburgerMenu(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.25),
              Colors.transparent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: List.generate(
            navItems.length,
            (index) {
              return LeftNavigationItemTile(
                item: navItems[index],
              );
            },
          )
              .animate(
                interval: 100.ms,
              )
              .slideY(
                begin: 1,
                end: 0,
                duration: 0.5.seconds,
                curve: Curves.easeInOut,
              )
              .fadeIn(
                duration: 0.5.seconds,
                curve: Curves.easeInOut,
              ),
        ),
      ),
    );
  }
}
