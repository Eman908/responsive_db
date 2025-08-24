import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_assets.dart';
import 'package:admin_db/views/widgets/card_bottom.dart';
import 'package:admin_db/views/widgets/card_header.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AdaptiveTheme.of(context).mode.isLight
                  ? Assets.kCardLight
                  : Assets.kCardDark,
            ),
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(child: SizedBox(height: 20)),
            Padding(
              padding: EdgeInsets.only(left: 32, right: 32),
              child: CardHeader(),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.only(right: 24, left: 24),
              child: CardBottom(),
            ),
            Flexible(child: SizedBox(height: 27)),
          ],
        ),
      ),
    );
  }
}
