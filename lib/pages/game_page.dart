import 'package:finance_app4/model/answer.dart';
import 'package:finance_app4/model/question.dart';
import 'package:finance_app4/model/result.dart';
import 'package:finance_app4/pages/final_page.dart';
import 'package:finance_app4/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

List<Result> results = [];

class QuizGamePage extends StatefulWidget {
  const QuizGamePage({
    super.key,
  });

  @override
  State<QuizGamePage> createState() => _QuizGamePageState();
}

class _QuizGamePageState extends State<QuizGamePage> {
  List<Question> questions = [
    Question(
        title: 'What is the role of competition in a market economy?',
        answers: [
          Answer(
              title: 'To eliminate profits for businesses.', isCorrect: false),
          Answer(title: 'To create monopolies.', isCorrect: false),
          Answer(
              title: 'To promote efficiency and innovation.', isCorrect: true),
        ],
        isCompleted: false),
    Question(
        title:
            'Which of the following is NOT a characteristic of a perfectly competitive market?',
        answers: [
          Answer(title: 'There are many buyers and sellers.', isCorrect: true),
          Answer(title: 'Firms produce identical products.', isCorrect: false),
          Answer(
              title: 'Firms have no control over the price of their product.',
              isCorrect: false),
        ],
        isCompleted: false),
    Question(
        title:
            'What is the main difference between fiscal policy and monetary policy?',
        answers: [
          Answer(
              title:
                  'Fiscal policy is short-term, while monetary policy is long-term.',
              isCorrect: false),
          Answer(
              title:
                  'Fiscal policy uses government spending and taxes, while monetary policy uses interest rates and bank reserves.',
              isCorrect: true),
          Answer(
              title:
                  'Fiscal policy targets inflation, while monetary policy targets unemployment.',
              isCorrect: false),
        ],
        isCompleted: false),
    Question(
        title: 'What is a positive externality?',
        answers: [
          Answer(
              title:
                  'A cost that is imposed on others by a production process.',
              isCorrect: false),
          Answer(
              title:
                  'A benefit that is provided to others by a production process.',
              isCorrect: true),
          Answer(
              title:
                  'A situation where the quantity supplied equals the quantity demanded.',
              isCorrect: false),
        ],
        isCompleted: false),
    Question(
        title: 'What is a public good?',
        answers: [
          Answer(
              title: 'A good that is excludable and rivalrous.',
              isCorrect: false),
          Answer(
              title: 'A good that is non-excludable and rivalrous.',
              isCorrect: false),
          Answer(
              title: 'A good that is non-excludable and non-rivalrous.',
              isCorrect: true),
        ],
        isCompleted: false),
    Question(
        title:
            'What is the difference between economic growth and economic development?',
        answers: [
          Answer(
              title:
                  'Economic growth focuses on long-term improvements in living standards, while economic development focuses on short-term increases in GDP.',
              isCorrect: false),
          Answer(
              title:
                  'Economic growth focuses on increasing the quantity of goods and services produced, while economic development focuses on improving the quality of life.',
              isCorrect: true),
          Answer(
              title:
                  'Economic growth is measured by GDP, while economic development is measured by the Human Development Index (HDI)',
              isCorrect: false),
        ],
        isCompleted: false),
    Question(
        title: 'What is a recession?',
        answers: [
          Answer(
              title: 'A period of sustained economic growth.',
              isCorrect: false),
          Answer(
              title:
                  'A period of economic decline lasting for at least six months.',
              isCorrect: true),
          Answer(
              title: 'A situation where the unemployment rate is very low.',
              isCorrect: false),
        ],
        isCompleted: false),
    Question(
        title: 'What is the main goal of inflation targeting?',
        answers: [
          Answer(title: 'To reduce unemployment.', isCorrect: false),
          Answer(title: 'To promote economic growth.', isCorrect: false),
          Answer(title: 'To maintain a stable price level.', isCorrect: true),
        ],
        isCompleted: false),
    Question(
        title: 'What is the role of a central bank in a market economy?',
        answers: [
          Answer(title: 'To set tax rates.', isCorrect: false),
          Answer(title: 'To conduct monetary policy.', isCorrect: true),
          Answer(
              title: 'To provide social welfare programs.', isCorrect: false),
        ],
        isCompleted: false),
    Question(
        title: 'What is a comparative advantage?',
        answers: [
          Answer(
              title:
                  'The ability to produce a good or service at a lower cost than another producer, even if they are not the most efficient producer of any good.',
              isCorrect: true),
          Answer(
              title:
                  'The ability to produce a good or service at a higher quality than another producer.',
              isCorrect: false),
          Answer(
              title:
                  'A situation where two countries have the same production costs for all goods.',
              isCorrect: false),
        ],
        isCompleted: false),
    Question(
        title: 'What is a tariff?',
        answers: [
          Answer(title: 'A tax on imported goods.', isCorrect: true),
          Answer(
              title: 'A government subsidy for domestic producers.',
              isCorrect: false),
          Answer(
              title: 'A system of quotas on imported goods.', isCorrect: false),
        ],
        isCompleted: false),
    Question(
        title:
            'What is the difference between unemployment insurance and welfare?',
        answers: [
          Answer(
              title:
                  'Unemployment insurance is based on past employment history, while welfare is not.',
              isCorrect: false),
          Answer(
              title:
                  'Unemployment insurance is temporary assistance for those who have lost their jobs, while welfare is long-term assistance for the poor.',
              isCorrect: true),
          Answer(
              title:
                  'Unemployment insurance is only available to citizens, while welfare is available to all.',
              isCorrect: false),
        ],
        isCompleted: false),
    Question(
        title:
            'What is the difference between aggregate demand and aggregate supply?',
        answers: [
          Answer(
              title:
                  'Aggregate demand is measured by GDP, while aggregate supply is measured by the unemployment rate.',
              isCorrect: false),
          Answer(
              title:
                  'Aggregate demand is controlled by consumers, while aggregate supply is controlled by businesses.',
              isCorrect: false),
          Answer(
              title:
                  'Aggregate demand represents the total demand for all goods and services in the economy at a given price level, while aggregate supply represents the total quantity of goods and services that firms are willing to produce and sell at a given price level.',
              isCorrect: true),
        ],
        isCompleted: false),
    Question(
        title: 'What is a budget deficit?',
        answers: [
          Answer(
              title:
                  'A situation where government spending is greater than government revenue.',
              isCorrect: true),
          Answer(
              title:
                  'A situation where government revenue is greater than government spending.',
              isCorrect: false),
          Answer(title: 'A tax on borrowing money.', isCorrect: false),
        ],
        isCompleted: false),
    Question(
        title:
            'What is the difference between fiscal policy and automatic stabilizers?',
        answers: [
          Answer(
              title:
                  'Fiscal policy is a discretionary policy that requires action by the government, while automatic stabilizers are built-in mechanisms that respond to changes in the economy without requiring any action.',
              isCorrect: true),
          Answer(
              title:
                  'Fiscal policy targets inflation, while automatic stabilizers target unemployment.',
              isCorrect: false),
          Answer(
              title:
                  'Fiscal policy is short-term, while automatic stabilizers are long-term.',
              isCorrect: false),
        ],
        isCompleted: false),
  ];

  int questionNumber = 0;
  Question currentQuestion = Question();
  Answer selected = Answer();
  int correctAnswers = 0;
  String currentImage = '';
  @override
  void initState() {
    super.initState();
    questions.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    Map<int, Question> quastionMap = {};
    quastionMap = questions.asMap();

    quastionMap.forEach((key, value) {
      if (key == questionNumber) {
        currentQuestion = value;
      }
    });
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 22),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.chevron_left,
                        color: Color(0xFF581CD8),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Back',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Color(0xFF581CD8),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 44),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Quiz',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '${questionNumber + 1}/15',
                  style: const TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 20, top: 0, left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            '${questionNumber + 1}. ${currentQuestion.title!}',
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: getAnswers(),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 18),
            child: InkWell(
              onTap: () {
                if (selected.title != null) {
                  currentQuestion.isCompleted = true;

                  if (questionNumber < 14) {
                    selected = Answer();
                    questionNumber++;
                  } else {
                    Result result = Result();
                    result.count = correctAnswers;
                    result.date = DateFormat("MM/dd/yy").format(DateTime.now());
                    results.add(result);
                    addDataToSP();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => FinalQuizPage(
                                score: correctAnswers,
                              )),
                    );
                  }

                  setState(() {});
                }
              },
              child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: const Color(0xFF581CD8),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget getAnswers() {
    List<Widget> list = [];

    for (var answer in currentQuestion.answers!) {
      list.add(InkWell(
        onTap: () {
          if (answer.isCorrect!) {
            correctAnswers++;
          }
          currentQuestion.isCorrect = answer.isCorrect;
          selected = answer;
          setState(() {});
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: selected == answer
                ? const Color(0xFF581CD8)
                : const Color(0xFFF9F6FF),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  answer.title!,
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: selected == answer ? Colors.white : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ));
      list.add(const SizedBox(
        height: 12,
      ));
    }

    return Column(
      children: list,
    );
  }
}
