import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:admin_db/views/widgets/latest_transaction_list.dart';
import 'package:flutter/material.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          S.of(context).Lastest_Transactions,
          style: AppTextStyles.sM16(context),
        ),
        const LatestTransactionList(),
      ],
    );
  }
}
