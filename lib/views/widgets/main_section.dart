import 'package:admin_db/views/widgets/all_expenses.dart';
import 'package:admin_db/views/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.only(top: 40, bottom: 33),
      child: Column(spacing: 24, children: [AllExpenses(), QuickInvoice()]),
    );
  }
}
