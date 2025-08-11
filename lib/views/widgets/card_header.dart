import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).Name_card,
          style: AppTextStyles.sR16(context).copyWith(
            color:
                AdaptiveTheme.of(context).mode.isLight
                    ? Colors.white
                    : Colors.black,
          ),
        ),
        Text(S.of(context).name, style: AppTextStyles.sM20(context)),
      ],
    );
  }
}

