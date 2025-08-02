import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(S.of(context).Quick_invoice, style: AppTextStyles.sSB20(context)),
        const Expanded(child: SizedBox()),
        CircleAvatar(
          radius: 48 / 2,
          backgroundColor:
              AdaptiveTheme.of(context).mode.isLight
                  ? LightThemeColors.userInfoCard
                  : DarkThemeColors.userInfoCard,
          child: Icon(
            Icons.add,
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
