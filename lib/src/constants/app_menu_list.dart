import 'package:flutter/widgets.dart';
import 'package:portfolio/src/routes/route.dart';

import '../components/responsive/extension.dart' show FormFactorExtension;

class AppMenuList {
  static List<AppMenu> getItems(BuildContext context) => [
    AppMenu(title: context.texts.home, path: Routes.home),
    AppMenu(title: context.texts.course, path: Routes.course),
    AppMenu(title: context.texts.aboutMe, path: Routes.about),
    AppMenu(title: context.texts.blog, path: Routes.blog),
  ];
}

class AppMenu {
  final String title;
  final String path;

  AppMenu({required this.title, required this.path});
}
