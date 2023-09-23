// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../../../helpers/enums.dart';

class NavigationResponsiveConfig {
  final bool showSidebar;


  NavigationResponsiveConfig({
    required this.showSidebar,
  });

  static Map<DeviceType, NavigationResponsiveConfig> responsiveUI = {
    DeviceType.mobile: NavigationResponsiveConfig(
      showSidebar: false
    ),
    DeviceType.tablet: NavigationResponsiveConfig(
      showSidebar: true
    ),
    DeviceType.desktop: NavigationResponsiveConfig(
      showSidebar: true
    ),
  };
}

