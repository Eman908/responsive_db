import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/models/form_model.dart';
import 'package:admin_db/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.item});
  final FormModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(item.title, style: AppTextStyles.sM16(context)),
        CustomTextField(hintText: item.hintText),
      ],
    );
  }
}
