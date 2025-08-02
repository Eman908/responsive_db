import 'package:admin_db/cubits/active_button/active_button_cubit.dart';
import 'package:admin_db/models/expense_item_model.dart';
import 'package:admin_db/views/widgets/active_expenses_item.dart';
import 'package:admin_db/views/widgets/in_active_expenses_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.item, required this.index});

  final ExpenseItemModel item;
  final int index;

  @override
  Widget build(BuildContext context) {
    final currentIndex = context.watch<ActiveButtonCubit>().currentIndex2;
    final isActive = index == currentIndex;

    return GestureDetector(
      onTap: () {
        context.read<ActiveButtonCubit>().activeButton2(index: index);
      },
      child:
          isActive
              ? ActiveExpensesItem(item: item)
              : InActiveExpensesItem(item: item),
    );
  }
}
