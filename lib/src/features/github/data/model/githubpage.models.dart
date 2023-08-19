// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../config/icons.config.dart';

class GitHubPageModel {
  final IconData icon;
  final String heading;
  final String subHeading;
  final String url;
  final String title;
  GitHubPageModel({
    required this.icon,
    required this.heading,
    required this.subHeading,
    required this.url,
    required this.title,
  });
  factory GitHubPageModel.fromDatabase(Map<String, dynamic> doc) {
    return GitHubPageModel(
      icon: PersonalPortfolioIcons.iconMap[doc['icon']]!,
      title:doc['title'],
      url: doc['url'],
      heading: doc['heading'],
      subHeading: doc['subHeading'],
    );
  }
}
