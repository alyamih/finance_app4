class Result {
  int? count;
  String? date;

  Result({this.count, this.date});
  factory Result.fromJson(Map<String, dynamic> parsedJson) {
    return Result(count: parsedJson['count'], date: parsedJson['date']);
  }

  Map<String, dynamic> toJson() {
    return {
      "count": count,
      "date": date,
    };
  }
}
