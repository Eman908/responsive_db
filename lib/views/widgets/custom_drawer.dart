import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_assets.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:admin_db/models/drawer_list_item_model.dart';
import 'package:admin_db/models/info_card_model.dart';
import 'package:admin_db/views/widgets/drawer_list_item_builder.dart';
import 'package:admin_db/views/widgets/inactive_drawer_list_item.dart';
import 'package:admin_db/views/widgets/toggle_button_list.dart';
import 'package:admin_db/views/widgets/user_info_card.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color:
          AdaptiveTheme.of(context).mode.isLight
              ? LightThemeColors.drawerBackGround
              : DarkThemeColors.drawerBackGround,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: ToggleButtonList()),
            SliverToBoxAdapter(
              child: UserInfoCard(
                item: InfoCardModel(
                  email: S.of(context).email,
                  image: Assets.kImagesAva0,
                  name: S.of(context).name,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 8)),
            const DrawerListItemBuilder(),
            SliverFillRemaining(
              hasScrollBody: false,

              child: Column(
                children: [
                  const Expanded(child: SizedBox(height: 20)),
                  InActiveDrawerListItem(
                    item: DrawerListItemModel(
                      title: S.of(context).Setting_system,
                      icon: Assets.kImagesSettings,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InActiveDrawerListItem(
                    item: DrawerListItemModel(
                      title: S.of(context).Logout_account,
                      icon: Assets.kImagesLogout,
                    ),
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
