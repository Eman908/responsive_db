import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/models/income_details_model.dart';
import 'package:flutter/material.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.item});
  final IncomeDetailsModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomDot(color: item.color),
      title: Text(item.title, style: AppTextStyles.sR16(context)),
      trailing: Text(item.value, style: AppTextStyles.sM16(context)),
    );
  }
}

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
