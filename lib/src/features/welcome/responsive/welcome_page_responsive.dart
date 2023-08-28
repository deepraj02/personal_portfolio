// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../helpers/enums.dart';
import '../../../../styles/styles.dart';

class WelcomePageResponsiveConfig {
  final double titleSize;
  final double subTitleSize;
  final double titleSize2;
  final double badgeSize;
  final double handSize;
  final double imageSize;
  final double imageBorderSize;
  final Axis headerAxis;
  final Axis subtitleAxis;
  final SizedBox headerGap;
  final SizedBox subtitleGap;

  WelcomePageResponsiveConfig(
      {required this.titleSize,
      required this.subTitleSize,
      required this.titleSize2,
      required this.badgeSize,
      required this.handSize,
      required this.imageSize,
      required this.imageBorderSize,
      required this.headerAxis,
      required this.subtitleAxis,
      required this.headerGap,
      required this.subtitleGap});

  static Map<DeviceType, WelcomePageResponsiveConfig> responsiveUI = {
    DeviceType.mobile: WelcomePageResponsiveConfig(
        titleSize: 50,
        subTitleSize: 20,
        badgeSize: 50,
        handSize: 50,
        imageSize: 100,
        imageBorderSize: 4,
        headerAxis: Axis.vertical,
        subtitleAxis: Axis.vertical,
        headerGap: PortfolioStyles.mediumVGap,
        subtitleGap: PortfolioStyles.smallVGap,
        titleSize2: 35),
    DeviceType.tablet: WelcomePageResponsiveConfig(
        titleSize: 80,
        subTitleSize: 30,
        badgeSize: 60,
        handSize: 60,
        imageSize: 120,
        imageBorderSize: 6,
        headerAxis: Axis.horizontal,
        subtitleAxis: Axis.horizontal,
        headerGap: PortfolioStyles.mediumHGap,
        subtitleGap: PortfolioStyles.smallHGap,
        titleSize2: 70),
    DeviceType.desktop: WelcomePageResponsiveConfig(
        titleSize: 100,
        subTitleSize: 40,
        badgeSize: 80,
        handSize: 90,
        imageSize: 180,
        imageBorderSize: 8,
        headerAxis: Axis.horizontal,
        subtitleAxis: Axis.horizontal,
        headerGap: PortfolioStyles.mediumHGap,
        subtitleGap: PortfolioStyles.smallHGap,
        titleSize2: 80),
  };
}
