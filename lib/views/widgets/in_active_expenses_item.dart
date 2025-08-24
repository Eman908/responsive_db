import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/models/expense_item_model.dart';
import 'package:admin_db/views/widgets/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({super.key, required this.item});
  final ExpenseItemModel item;
  @override
  Widget build(BuildContext context) {
    final theme = AdaptiveTheme.of(context).mode;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color:
              theme.isLight ? LightThemeColors.stroke : DarkThemeColors.stroke,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          AllExpensesItemHeader(image: item.image),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,

            child: Text(item.title, style: AppTextStyles.sM16(context)),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,

            child: Text(item.date, style: AppTextStyles.sR14(context)),
          ),

          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,

            child: Text(item.price, style: AppTextStyles.sSB20(context)),
          ),
        ],
      ),
    );
  }
}
