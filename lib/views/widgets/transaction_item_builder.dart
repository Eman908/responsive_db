import 'package:admin_db/generated/l10n.dart';
import 'package:admin_db/models/transaction_item_model.dart';
import 'package:admin_db/views/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionItemBuilder extends StatelessWidget {
  const TransactionItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TransactionItemModel> items = [
      TransactionItemModel(
        title: S.of(context).Cash_Withdrawal,
        subTitle: S.of(context).April_2022,
        amount: "\$20,129",
        isWithdrawl: true,
      ),
      TransactionItemModel(
        title: S.of(context).LandingPageproject,
        subTitle: "13 Apr, 2022 at 3:30 PM",
        amount: "\$2,000",
        isWithdrawl: false,
      ),
      TransactionItemModel(
        title: S.of(context).JuniMobileAppproject,
        subTitle: "13 Apr, 2022 at 3:30 PM",
        amount: "\$20,129",
        isWithdrawl: false,
      ),
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TransactionItem(item: items[index]);
      },
    );
  }
}
