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
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 24,
      ),
      itemBuilder: (BuildContext context, int index) {
        return TitleTextField(item: items[index]);
      },
    );
  }
}
