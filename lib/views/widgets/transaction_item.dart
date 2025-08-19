import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/models/transaction_item_model.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.item});
  final TransactionItemModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color:
          AdaptiveTheme.of(context).mode.isLight
              ? LightThemeColors.userInfoCard
              : DarkThemeColors.userInfoCard,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(item.title, style: AppTextStyles.sSB16(context)),
        subtitle: Text(
          item.subTitle,
          style: AppTextStyles.sR16(
            context,
          ).copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          item.amount,
          style: AppTextStyles.sSB20(context).copyWith(
            color:
                item.isWithdrawl
                    ? const Color(0xFFF3735E)
                    : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
