import 'package:admin_db/views/widgets/transaction_history_header.dart';
import 'package:admin_db/views/widgets/transaction_item_builder.dart';
import 'package:flutter/material.dart';

class TranscationHistory extends StatelessWidget {
  const TranscationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 20,
      children: [TransactionHistoryHeader(), TransactionItemBuilder()],
    );
  }
}
