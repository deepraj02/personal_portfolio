// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../config/icons.config.dart';

class LinkedinPageModel {
  final IconData icon;
  final String title;
  final String subTitle;
  final String handle;
  final String url;
  LinkedinPageModel({
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.handle,
    required this.url,
  });

  factory LinkedinPageModel.fromDatabase(Map<String, dynamic> doc) {
    return LinkedinPageModel(
      icon: PersonalPortfolioIcons.iconMap[doc['icon']]!,
      title: doc['title'],
      subTitle: doc['subTitle'],
      handle: doc['handle'],
      url: doc['url'],
    );
  }
}
