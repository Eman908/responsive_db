import 'package:admin_db/views/widgets/all_expenses_header.dart';
import 'package:admin_db/views/widgets/custom_container.dart';
import 'package:admin_db/views/widgets/expenses_item_builder.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomeContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          ExpensesItemBuilder(),
        ],
      ),
    );
  }
}
