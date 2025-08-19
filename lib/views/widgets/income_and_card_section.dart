import 'package:admin_db/views/widgets/income_section.dart';
import 'package:admin_db/views/widgets/my_card_and_transaction.dart';
import 'package:flutter/material.dart';

class IncomeAndCardSection extends StatelessWidget {
  const IncomeAndCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.only(top: 40.0, bottom: 40),

      child: Column(
        spacing: 24,
        children: [MyCardAndTransaction(), IncomeSection()],
      ),
    );
  }
}
