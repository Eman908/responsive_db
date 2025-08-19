import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:flutter/material.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(S.of(context).My_Transaction, style: AppTextStyles.sSB20(context)),
        Text(
          S.of(context).see_all,
          style: AppTextStyles.sM16(context).copyWith(
            color:
                AdaptiveTheme.of(context).mode.isLight
                    ? LightThemeColors.mainColor
                    : DarkThemeColors.mainColor,
          ),
        ),
      ],
    );
  }
}
