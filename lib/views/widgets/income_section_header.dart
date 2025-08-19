import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:admin_db/views/widgets/date_option.dart';
import 'package:flutter/material.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(S.of(context).Income, style: AppTextStyles.sSB20(context)),
        const Expanded(child: SizedBox()),
        const DateOption(),
      ],
    );
  }
}
