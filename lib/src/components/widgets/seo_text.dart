import 'package:flutter/material.dart';

class SeoText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const SeoText(this.text,{super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
