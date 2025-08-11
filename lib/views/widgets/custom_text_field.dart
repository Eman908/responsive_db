import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.sR16(
          context,
        ).copyWith(color: const Color(0xffAAAAAA)),
        border: borderStyle(),
        filled: true,
        fillColor:
            AdaptiveTheme.of(context).mode.isLight
                ? LightThemeColors.userInfoCard
                : DarkThemeColors.userInfoCard,
        enabledBorder: borderStyle(),
        focusedBorder: borderStyle(),
      ),
    );
  }

  OutlineInputBorder borderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(width: 0, color: Colors.transparent),
    );
  }
}
