class TransactionItemModel {
  final String title;
  final String subTitle;
  final String amount;
  final bool isWithdrawl;

  const TransactionItemModel({
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.isWithdrawl,
  });
}
