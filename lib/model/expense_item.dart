enum EExpenseType {
  food("Food"),
  entertainment("Entertainment"),
  financialOperations("Financial operations"),
  travel("Travel"),
  unexpected("Unexpected Expenses"),
  other("Other");

  const EExpenseType(this.text);
  final String text;
}

class ExpenseItem {
  String? description;
  String? date;
  double? cost;
  EExpenseType? type;

  ExpenseItem({this.description, this.date, this.cost, this.type});

  factory ExpenseItem.fromJson(Map<String, dynamic> parsedJson) {
    return ExpenseItem(
        description: parsedJson['description'] ?? "",
        cost: parsedJson['cost'] ?? "",
        type: EExpenseType.values.byName(parsedJson['type']),
        date: parsedJson['date']);
  }

  Map<String, dynamic> toJson() {
    return {
      "description": description,
      "cost": cost,
      "date": date,
      "type": type!.name,
    };
  }
}
