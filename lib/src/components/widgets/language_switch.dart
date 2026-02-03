import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/src/components/widgets/seo_text.dart';
import 'package:portfolio/src/constants/app_icon.dart';

import '../responsive/extension.dart' show FormFactorExtension;
import 'provider.dart';

class LanguageSwitch extends ConsumerWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<String> locale = ref.watch(appLocaleControllerProvider);
    return PopupMenuButton<String>(
      initialValue: locale.value ?? 'en',
      onSelected: (value) {
        ref.read(appLocaleControllerProvider.notifier).changeLocale(value);
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'en',
          child: PopupLanguageSwitchItem(language: 'English', icon: AppIcon.us),
        ),
        PopupMenuItem(
          value: 'fa',
          child: PopupLanguageSwitchItem(language: 'فارسی', icon: AppIcon.ir),
        ),
      ],
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.language, color: context.colorScheme.onSurface),
          const Gap(4),
          SeoText(
            locale.value == 'en' ? 'en' : ' فا',
          ),
        ],
      ),
    );
  }
}

// 1. Extend PopupMenuItem instead of StatelessWidget
class PopupLanguageSwitchItem extends StatelessWidget {
  final String language;
  final String icon;
  const PopupLanguageSwitchItem({
    super.key,
    required this.language,
    required this.icon,
  });

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
