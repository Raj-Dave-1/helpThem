// 🚩 Dada Ki Jay Ho 🚩



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sih_help_disabled_people/providers/app_setting_provider.dart';


class DynamicText extends StatelessWidget {
  const DynamicText(this.str, {Key? key, this.style}) : super(key: key);
  final String str;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Consumer<AppSettingProvider>(
      builder: (context, value, child) => Text(
        str,
        style: style,
        textScaleFactor: value.textScaleFactor,
      ),
    );
  }
}