import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final theme = AdaptiveTheme.of(context).mode;
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      child: Container(
        width: isActive ? 32 : 8,
        height: 8,
        decoration: BoxDecoration(
          color:
              isActive
                  ? (theme.isLight
                      ? LightThemeColors.mainColor
                      : DarkThemeColors.mainColor)
                  : const Color(0xffE8E8E8),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
