import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/models/expense_item_model.dart';
import 'package:admin_db/views/widgets/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({super.key, required this.item});
  final ExpenseItemModel item;
  @override
  Widget build(BuildContext context) {
    final theme = AdaptiveTheme.of(context).mode;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color:
            theme.isLight
                ? LightThemeColors.mainColor
                : DarkThemeColors.mainColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          AllExpensesItemHeader(
            image: item.image,
            imageBG:
                AdaptiveTheme.of(context).mode.isLight
                    ? LightThemeColors.shadyBackground
                    : DarkThemeColors.shadyBackground,
            imageColor:
                AdaptiveTheme.of(context).mode.isLight
                    ? Colors.white
                    : Colors.black,
            iconColor:
                AdaptiveTheme.of(context).mode.isLight
                    ? Colors.white
                    : Colors.black,
          ),
          const SizedBox(height: 34),
          Text(
            item.title,
            style: AppTextStyles.sM16(context).copyWith(
              color:
                  AdaptiveTheme.of(context).mode.isLight
                      ? LightThemeColors.userInfoCard
                      : DarkThemeColors.userInfoCard,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            item.date,
            style: AppTextStyles.sR14(context).copyWith(
              color:
                  AdaptiveTheme.of(context).mode.isLight
                      ? Colors.white
                      : Colors.black,
            ),
          ),

          const SizedBox(height: 16),
          Text(
            item.price,
            style: AppTextStyles.sSB20(context).copyWith(
              color:
                  AdaptiveTheme.of(context).mode.isLight
                      ? Colors.white
                      : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
