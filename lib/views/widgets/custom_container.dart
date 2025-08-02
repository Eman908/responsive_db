import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomeContainer extends StatelessWidget {
  const CustomeContainer({
    super.key,
    required this.child,
    required this.padding,
  });
  final Widget child;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color:
            AdaptiveTheme.of(context).mode.isLight
                ? LightThemeColors.drawerBackGround
                : DarkThemeColors.drawerBackGround,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
