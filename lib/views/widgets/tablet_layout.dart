import 'package:admin_db/views/widgets/custom_drawer.dart';
import 'package:admin_db/views/widgets/mobile_layout.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),

        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: MobileLayout(),
          ),
        ),
      ],
    );
  }
}
