import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CardBottom extends StatelessWidget {
  const CardBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '0918 8124 0042 8129',
          style: AppTextStyles.sSB24(context).copyWith(
            color:
                AdaptiveTheme.of(context).mode.isLight
                    ? Colors.white
                    : Colors.black,
          ),
        ),
        Text(
          "12/20 - 124",
          style: AppTextStyles.sR16(context).copyWith(
            color:
                AdaptiveTheme.of(context).mode.isLight
                    ? Colors.white
                    : Colors.black,
          ),
        ),
      ],
    );
  }
}
