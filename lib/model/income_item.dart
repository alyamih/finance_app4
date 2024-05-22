enum EIncomeType {
  salary("Salary"),
  financialOperations("Financial operations"),
  social("Social Benefits");

  const EIncomeType(this.text);
  final String text;
}

class IncomeItem {
  String? date;
  EIncomeType? type;
  double? cost;

  IncomeItem({this.date, this.cost, this.type});

  factory IncomeItem.fromJson(Map<String, dynamic> parsedJson) {
    return IncomeItem(
        cost: parsedJson['cost'] ?? "",
        type: EIncomeType.values.byName(parsedJson['type']),
        date: parsedJson['date']);
  }

  Map<String, dynamic> toJson() {
    return {
      "cost": cost,
      "date": date,
      "type": type!.name,
    };
  }
}
