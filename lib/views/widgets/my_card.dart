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
        child: const Padding(
          padding: EdgeInsets.only(top: 20, left: 32, bottom: 27, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [CardHeader(), Expanded(child: SizedBox()), CardBottom()],
          ),
        ),
      ),
    );
  }
}
