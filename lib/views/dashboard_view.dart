import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/size_config.dart';
import 'package:admin_db/views/widgets/adaptive_layout.dart';
import 'package:admin_db/views/widgets/custom_drawer.dart';
import 'package:admin_db/views/widgets/desktop_layout.dart';
import 'package:admin_db/views/widgets/mobile_layout.dart';
import 'package:admin_db/views/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet
              ? const CustomDrawer()
              : null,
      appBar:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet
              ? AppBar(
                elevation: 0,
                leading: Builder(
                  builder:
                      (context) => IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(Icons.menu),
                      ),
                ),
                backgroundColor:
                    AdaptiveTheme.of(context).mode.isLight
                        ? LightThemeColors.userInfoCard
                        : DarkThemeColors.userInfoCard,
              )
              : null,

      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
