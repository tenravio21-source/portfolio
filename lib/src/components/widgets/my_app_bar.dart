import 'package:flutter/material.dart';

import '../responsive/extension.dart';
import '../style/app_size.dart' show Insets;

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    alignment: Alignment.center,
    // color: Theme.of(context).appBarTheme.backgroundColor,
    height: context.insets.appBarHeight,
    color: Colors.red,
    padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: ConstrainedBox(
      constraints: BoxConstraints(maxWidth: Insets.maxWidth),
        child: Row(children: [
          AppLogo(),
          Spacer(),
          if(context.isDesktop) AppMenus(),
          Spacer(),
          LanguageToggle(),
          ThemeToggle(),
          if(context.isMobile) Icon(Icons.menu),
        ]),
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Portfolio', style: context.textStyle.titleLgBold);
  }
}

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children:[
      Text(context.texts.home),
      Text(context.texts.course),
      Text(context.texts.blog),
      Text(context.texts.aboutMe),
    ]);
  }
}

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {},
      itemBuilder: (context) => [
        const PopupMenuItem<String>(
          value: 'en',
          child: Text('English'),
        ),
        const PopupMenuItem<String>(
          value: 'es',
          child: Text('Español'),
        ),
      ],
    );
  }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: true,
      onChanged: (value) {},
    );
  }
}
