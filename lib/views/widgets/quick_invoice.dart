import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/app_colors.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:admin_db/views/widgets/custom_button.dart';
import 'package:admin_db/views/widgets/custom_container.dart';
import 'package:admin_db/views/widgets/custom_divider.dart';
import 'package:admin_db/views/widgets/form_builder.dart';
import 'package:admin_db/views/widgets/latest_transactions.dart';
import 'package:admin_db/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(height: 24),
          const LatestTransactions(),
          const CustomDivider(),
          const FormBuilder(),
          const SizedBox(height: 24),
          Row(
            spacing: 24,
            children: [
              Expanded(
                child: CustomButton(
                  title: S.of(context).Add_details,
                  bgColor: Colors.transparent,
                  txtColor:
                      AdaptiveTheme.of(context).mode.isLight
                          ? LightThemeColors.mainColor
                          : DarkThemeColors.mainColor,
                ),
              ),
              Expanded(child: CustomButton(title: S.of(context).send_money)),
            ],
          ),
        ],
      ),
    );
  }
}
