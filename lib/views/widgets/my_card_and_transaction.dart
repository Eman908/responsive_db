import 'package:admin_db/views/widgets/custom_container.dart';
import 'package:admin_db/views/widgets/custom_divider.dart';
import 'package:admin_db/views/widgets/my_card_section.dart';
import 'package:admin_db/views/widgets/transcation_history.dart';
import 'package:flutter/material.dart';

class MyCardAndTransaction extends StatelessWidget {
  const MyCardAndTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomeContainer(
      padding: 24,
      child: Column(
        children: [MyCardSection(), CustomDivider(), TranscationHistory()],
      ),
    );
  }
}
