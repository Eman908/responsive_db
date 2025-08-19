import 'package:admin_db/generated/l10n.dart';
import 'package:admin_db/models/form_model.dart';
import 'package:admin_db/views/widgets/title_text_field.dart';
import 'package:flutter/material.dart';

class FormBuilder extends StatelessWidget {
  const FormBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FormModel> items = [
      FormModel(
        hintText: S.of(context).Type_customer_name,
        title: S.of(context).Customer_name,
      ),
      FormModel(
        hintText: S.of(context).Type_customer_email,
        title: S.of(context).Customer_email,
      ),
      FormModel(
        hintText: S.of(context).Type_customer_name,
        title: S.of(context).Item_name,
      ),
      FormModel(hintText: S.of(context).Item_mount, title: 'USD'),
    ];
    return Column(
      spacing: 24,
      children: [
        Row(
          spacing: 16,
          children: [
            Expanded(child: TitleTextField(item: items[0])),
            Expanded(child: TitleTextField(item: items[1])),
          ],
        ),
        Row(
          spacing: 16,
          children: [
            Expanded(child: TitleTextField(item: items[2])),
            Expanded(child: TitleTextField(item: items[3])),
          ],
        ),
      ],
    );
  }
}
