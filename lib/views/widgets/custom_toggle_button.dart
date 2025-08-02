import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CutsomToggleButton extends StatelessWidget {
  const CutsomToggleButton({
    super.key,
    required this.text1,
    required this.text2,
    required this.onPressed,
    required this.isSelected,
  });
  final String text1, text2;
  final void Function(int) onPressed;
  final List<bool> isSelected;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ToggleButtons(
        disabledBorderColor:
            AdaptiveTheme.of(context).mode.isLight
                ? LightThemeColors.stroke
                : DarkThemeColors.stroke,
        selectedBorderColor:
            AdaptiveTheme.of(context).mode.isLight
                ? LightThemeColors.stroke
                : DarkThemeColors.stroke,
        borderRadius: BorderRadius.circular(12),
        isSelected: isSelected,

        fillColor:
            AdaptiveTheme.of(context).mode.isLight
                ? LightThemeColors.mainColor
                : DarkThemeColors.mainColor,
        onPressed: onPressed,

        borderColor:
            AdaptiveTheme.of(context).mode.isLight
                ? LightThemeColors.userInfoCard
                : DarkThemeColors.userInfoCard,
        selectedColor:
            AdaptiveTheme.of(context).mode.isLight
                ? Colors.white
                : Colors.black,
        children: [
          Text(
            text1,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          Text(
            text2,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
