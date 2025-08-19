import 'package:admin_db/views/widgets/custom_drawer.dart';
import 'package:admin_db/views/widgets/income_and_card_section.dart';
import 'package:admin_db/views/widgets/main_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: MainSection()),
        SizedBox(width: 24),
        Expanded(child: IncomeAndCardSection()),
      ],
    );
  }
}
