import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.bgColor,
    this.txtColor,
  });
  final String title;
  final Color? bgColor, txtColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},

        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          backgroundColor: WidgetStateProperty.all(
            bgColor ??
                (AdaptiveTheme.of(context).mode.isLight
                    ? LightThemeColors.mainColor
                    : DarkThemeColors.mainColor),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        child: Text(
          title,
          style: AppTextStyles.sSB18(context).copyWith(color: txtColor),
        ),
      ),
    );
  }
}
