import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:flutter/material.dart';

class DateOption extends StatelessWidget {
  const DateOption({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AdaptiveTheme.of(context).mode;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color:
              theme.isLight ? LightThemeColors.stroke : DarkThemeColors.stroke,
        ),
      ),

      child: Row(
        spacing: 12,
        children: [
          Text(S.of(context).Monthly, style: AppTextStyles.sM16(context)),
          Icon(
            Icons.keyboard_arrow_down,
            color:
                theme.isLight
                    ? LightThemeColors.darkBlue
                    : DarkThemeColors.darkBlue,
          ),
        ],
      ),
    );
  }
}
