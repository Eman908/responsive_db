import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageBG,
    this.imageColor,
    this.iconColor,
  });
  final String image;
  final Color? imageBG;
  final Color? imageColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: CircleAvatar(
            backgroundColor:
                imageBG ??
                (AdaptiveTheme.of(context).mode.isLight
                    ? LightThemeColors.userInfoCard
                    : DarkThemeColors.userInfoCard),
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ??
                    (AdaptiveTheme.of(context).mode.isLight
                        ? LightThemeColors.mainColor
                        : DarkThemeColors.mainColor),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Icon(
          Icons.arrow_forward_ios_rounded,

          color:
              iconColor ??
              (AdaptiveTheme.of(context).mode.isLight
                  ? LightThemeColors.darkBlue
                  : DarkThemeColors.darkBlue),
        ),
      ],
    );
  }
}
