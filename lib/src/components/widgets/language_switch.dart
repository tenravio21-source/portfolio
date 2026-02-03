import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/src/components/widgets/seo_text.dart';
import 'package:portfolio/src/constants/app_icon.dart';

class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {},
      itemBuilder: (context) => [
        PopupLanguageSwitchItem(language: 'English', icon: AppIcon.us),
        PopupLanguageSwitchItem(language: 'فارسی', icon: AppIcon.ir),
      ],
    );
  }
}

// 1. Extend PopupMenuItem instead of StatelessWidget
class PopupLanguageSwitchItem extends PopupMenuItem<String> {
  PopupLanguageSwitchItem({
    super.key,
    required this.language,
    required this.icon,
  }) : super(
         child: _ItemChild(language: language, icon: icon),
       );

  final String language;
  final String icon;
}

class _ItemChild extends StatelessWidget {
  const _ItemChild({required this.language, required this.icon});
  final String language;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(icon, width: 18, height: 18),
        const Gap(8),
        SeoText(language),
      ],
    );
  }
}
