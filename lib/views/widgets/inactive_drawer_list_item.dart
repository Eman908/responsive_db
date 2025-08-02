import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/models/drawer_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveDrawerListItem extends StatelessWidget {
  const InActiveDrawerListItem({super.key, required this.item});
  final DrawerListItemModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.icon),
      title: Text(item.title, style: AppTextStyles.sR16(context)),
    );
  }
}
