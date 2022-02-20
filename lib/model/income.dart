class Income {
  String? title;
  String? content;

  String? sourceOfIncome;
  DateTime? datetimeAdded;
  DateTime? datetimeDue;

  int? amount;
  String? invNumber;
  Income({
    required this.title,
    required this.content,
    required this.sourceOfIncome,
    required this.datetimeAdded,
    required this.datetimeDue,
    required this.amount,
    required this.invNumber,
  });
}
