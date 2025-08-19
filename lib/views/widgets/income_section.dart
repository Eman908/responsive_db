import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:admin_db/views/widgets/custom_container.dart';
import 'package:admin_db/views/widgets/custom_divider.dart';
import 'package:admin_db/views/widgets/income_chart.dart';
import 'package:admin_db/views/widgets/income_items_builder.dart';
import 'package:admin_db/views/widgets/income_section_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      padding: 20,
      child: Column(
        children: [
          const IncomeSectionHeader(),
          const SizedBox(height: 16),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeItemsBuilder()),
            ],
          ),
          const CustomDivider(),
          Text(
            S.of(context).seedetails,
            style: AppTextStyles.sSB16(context).copyWith(
              color:
                  AdaptiveTheme.of(context).mode.isLight
                      ? LightThemeColors.mainColor
                      : DarkThemeColors.mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
