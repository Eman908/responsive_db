import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({
    super.key,
    required this.name,
    required this.email,
    required this.image,
  });
  final String name, email, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      color:
          AdaptiveTheme.of(context).mode.isLight
              ? LightThemeColors.userInfoCard
              : DarkThemeColors.userInfoCard,
      elevation: 0,
      child: ListTile(
        title: Text(name, style: AppTextStyles.sSB16(context)),
        subtitle: Text(email, style: AppTextStyles.sR12(context)),
        leading: SvgPicture.asset(image),
      ),
    );
  }
}
