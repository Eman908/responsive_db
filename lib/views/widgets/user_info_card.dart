import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/models/info_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key, required this.item});
  final InfoCardModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      color:
          AdaptiveTheme.of(context).mode.isLight
              ? LightThemeColors.userInfoCard
              : DarkThemeColors.userInfoCard,
      elevation: 0,
      child: Center(
        child: ListTile(
          title: FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(item.name, style: AppTextStyles.sSB16(context)),
          ),
          subtitle: FittedBox(
            alignment: AlignmentDirectional.centerStart,

            fit: BoxFit.scaleDown,
            child: Text(item.email, style: AppTextStyles.sR12(context)),
          ),
          leading: SvgPicture.asset(item.image),
        ),
      ),
    );
  }
}
