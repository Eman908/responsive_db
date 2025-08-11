import 'package:admin_db/views/widgets/custom_drawer.dart';
import 'package:admin_db/views/widgets/main_section.dart';
import 'package:admin_db/views/widgets/my_card_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      spacing: 32,
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 2, child: MainSection()),
        Expanded(child: MyCardSection()),
      ],
    );
  }
}
