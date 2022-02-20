class Expenses {
  String? title;
  String? content;

  String? whoToBePaid;
  DateTime? datetimePaided;
  DateTime? datetimeDue;

  int? amount;
  int? id;

  String? invNumber;
  Expenses({
    required this.title,
    required this.content,
    required this.whoToBePaid,
    required this.datetimePaided,
    required this.datetimeDue,
    required this.amount,
    required this.id,
    required this.invNumber,
  });
}
