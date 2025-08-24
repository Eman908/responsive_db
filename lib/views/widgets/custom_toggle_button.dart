import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
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
    var theme = AdaptiveTheme.of(context).mode;
    return SizedBox(
      height: 35,
      child: ToggleButtons(
        disabledBorderColor:
            theme.isLight ? LightThemeColors.stroke : DarkThemeColors.stroke,
        selectedBorderColor:
            theme.isLight ? LightThemeColors.stroke : DarkThemeColors.stroke,
        borderRadius: BorderRadius.circular(12),
        isSelected: isSelected,

        fillColor:
            theme.isLight
                ? LightThemeColors.mainColor
                : DarkThemeColors.mainColor,
        onPressed: onPressed,

        borderColor:
            theme.isLight
                ? LightThemeColors.userInfoCard
                : DarkThemeColors.userInfoCard,
        selectedColor: theme.isLight ? Colors.white : Colors.black,
        children: [
          Text(text1, style: AppTextStyles.sR12(context)),
          Text(text2, style: AppTextStyles.sR12(context)),
        ],
      ),
    );
  }
}
