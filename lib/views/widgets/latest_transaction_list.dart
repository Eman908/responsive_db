import 'package:admin_db/core/utils/app_assets.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:admin_db/models/info_card_model.dart';
import 'package:admin_db/views/widgets/user_info_card.dart';
import 'package:flutter/material.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});
  @override
  Widget build(BuildContext context) {
    final List<InfoCardModel> items = [
      InfoCardModel(
        name: S.of(context).Madrani_Andi,
        email: 'Madraniadi20@gmail',
        image: Assets.kImagesAva1,
      ),
      InfoCardModel(
        name: S.of(context).Josua_Nunito,
        email: 'Madraniadi20@gmail',
        image: Assets.kImagesAva2,
      ),
      InfoCardModel(
        name: S.of(context).Madrani_Andi,
        email: 'Madraniadi20@gmail',
        image: Assets.kImagesAva1,
      ),
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Row(
        children:
            items
                .map((e) => IntrinsicWidth(child: UserInfoCard(item: e)))
                .toList(),
      ),
    );
  }
}
