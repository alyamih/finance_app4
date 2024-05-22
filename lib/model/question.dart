import 'package:finance_app4/model/answer.dart';

enum EQueastionType { financialLiteracy, bankingProducts, investments }

class Question {
  String? title;
  List<Answer>? answers;
  bool? isCompleted;
  bool? isCorrect;

  Question({this.title, this.answers, this.isCompleted, this.isCorrect});
}
