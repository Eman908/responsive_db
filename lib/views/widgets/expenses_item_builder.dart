import 'package:admin_db/core/utils/app_assets.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:admin_db/models/expense_item_model.dart';
import 'package:admin_db/views/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesItemBuilder extends StatelessWidget {
  const ExpensesItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ExpenseItemModel> item = [
      ExpenseItemModel(
        image: Assets.kImagesBalance,
        title: S.of(context).Balance,
        date: S.of(context).April_2022,
        price: "\$20,129",
      ),
      ExpenseItemModel(
        image: Assets.kImagesIncome,
        title: S.of(context).Income,
        date: S.of(context).April_2022,
        price: "\$10,129",
      ),
      ExpenseItemModel(
        image: Assets.kImagesExpense,
        title: S.of(context).Expense,
        date: S.of(context).April_2022,
        price: "\$5,129",
      ),
    ];

    return Row(
      children:
          item.asMap().entries.map((entry) {
            final index = entry.key;
            final expItem = entry.value;

            final widget = AllExpensesItem(item: expItem, index: index);

            return Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
                child: widget,
              ),
            );
          }).toList(),
    );
  }
}
