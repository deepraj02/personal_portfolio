import '../models/left_navigation_item.dart';

abstract class INavigationRepository {
  List<LeftNavigationItem> getDefaultNavItems();
}
