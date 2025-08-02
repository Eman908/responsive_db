import 'package:admin_db/core/utils/app_assets.dart';
import 'package:admin_db/cubits/active_button/active_button_cubit.dart';
import 'package:admin_db/cubits/active_button/active_button_state.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:admin_db/models/drawer_list_item_model.dart';
import 'package:admin_db/views/widgets/active_drawer_item_list.dart';
import 'package:admin_db/views/widgets/inactive_drawer_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerListItemBuilder extends StatelessWidget {
  const DrawerListItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DrawerListItemModel> list = [
      DrawerListItemModel(
        title: S.of(context).Dashboard,
        icon: Assets.kImagesDashboard,
      ),
      DrawerListItemModel(
        title: S.of(context).My_Transaction,
        icon: Assets.kImagesTransaction,
      ),
      DrawerListItemModel(
        title: S.of(context).Statistics,
        icon: Assets.kImagesStatistics,
      ),
      DrawerListItemModel(
        title: S.of(context).Wallet_Account,
        icon: Assets.kImagesWallet,
      ),
      DrawerListItemModel(
        title: S.of(context).My_Investments,
        icon: Assets.kImagesInvestment,
      ),
    ];
    return SliverList.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            BlocProvider.of<ActiveButtonCubit>(
              context,
            ).activeButton(index: index);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: BlocBuilder<ActiveButtonCubit, ActiveButtonState>(
              builder: (context, state) {
                final isActive =
                    BlocProvider.of<ActiveButtonCubit>(context).currentIndex ==
                    index;

                return isActive
                    ? ActiveDrawerItemList(
                      item: list[index],
                    ) // ← You should have this widget
                    : InActiveDrawerListItem(item: list[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
