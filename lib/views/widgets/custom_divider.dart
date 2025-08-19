import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 48,
      color:
          AdaptiveTheme.of(context).mode.isLight
              ? LightThemeColors.stroke
              : DarkThemeColors.stroke,
    );
  }
}
