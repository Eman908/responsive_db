import 'package:admin_db/views/widgets/custom_container.dart';
import 'package:admin_db/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomeContainer(padding: 24, child: QuickInvoiceHeader());
  }
}
