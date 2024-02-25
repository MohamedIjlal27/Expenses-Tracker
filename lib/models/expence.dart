enum Category { food, travel, work, entertainment }

class ExpenceModel {
  ExpenceModel(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = "";

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
