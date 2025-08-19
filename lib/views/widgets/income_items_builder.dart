import 'package:admin_db/generated/l10n.dart';
import 'package:admin_db/models/income_details_model.dart';
import 'package:admin_db/views/widgets/income_details_item.dart';
import 'package:flutter/material.dart';

class IncomeItemsBuilder extends StatelessWidget {
  const IncomeItemsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final List<IncomeDetailsModel> items = [
      IncomeDetailsModel(
        color: const Color(0xff208CC8),
        title: S.of(context).Design_service,
        value: "40%",
      ),
      IncomeDetailsModel(
        color: const Color(0xff4EB7F2),
        title: S.of(context).Design_product,
        value: "25%",
      ),
      IncomeDetailsModel(
        color: const Color(0xff208CC8),
        title: S.of(context).Product_royalti,
        value: "20%",
      ),
      IncomeDetailsModel(
        color: const Color(0xffE2DECD),
        title: S.of(context).Others,
        value: "22%",
      ),
    ];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeDetailsItem(item: items[index]);
      },
    );
  }
}
