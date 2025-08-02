import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/models/drawer_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveDrawerItemList extends StatelessWidget {
  const ActiveDrawerItemList({super.key, required this.item});
  final DrawerListItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.icon),
      title: Text(item.title, style: AppTextStyles.sB16(context)),
      trailing: Container(
        width: 3,
        decoration: BoxDecoration(
          color:
              AdaptiveTheme.of(context).mode.isLight
                  ? LightThemeColors.mainColor
                  : DarkThemeColors.mainColor,
        ),
      ),
    );
  }
}
