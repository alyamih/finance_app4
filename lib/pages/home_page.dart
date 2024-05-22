import 'dart:convert';

import 'package:finance_app4/bottom_bar.dart';
import 'package:finance_app4/model/expense_item.dart';
import 'package:finance_app4/model/income_item.dart';
import 'package:finance_app4/model/result.dart';
import 'package:finance_app4/pages/add_expenses_incomes_page.dart';
import 'package:finance_app4/pages/game_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<ExpenseItem> expenses = [];
List<IncomeItem> incomes = [];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getDataFromSP(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(18, 60, 18, 24),
              child: Row(
                children: [
                  Text(
                    'Operations',
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 32,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            if (expenses.isNotEmpty || incomes.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 43,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: const Color(0xFFF9F6FF),
                    ),
                    child: TabBar(
                      dividerColor: Colors.transparent,
                      padding: const EdgeInsets.all(2),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: const TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: const Color(0xFF581CD8),
                      ),
                      tabs: const [
                        Tab(
                          text: 'Incomes',
                        ),
                        Tab(
                          text: 'Expenses',
                        )
                      ],
                    ),
                  ),
                ),
              ),
            Expanded(
              child: TabBarView(
                children: [
                  incomes.isNotEmpty
                      ? SingleChildScrollView(
                          child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: getIncomes(),
                        ))
                      : expenses.isNotEmpty
                          ? SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 30),
                                    child: Image.asset('assets/home_icon.png'),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Text(
                                      'There\'s no info',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'SF Pro Text',
                                          color: Color(0xFF581CD8),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Text(
                                      'Add your incomes',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'SF Pro Text',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            )
                          : SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 30),
                                    child: Image.asset('assets/home_icon.png'),
                                  ),
                                  const Text(
                                    'There\'s no info',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Text',
                                        color: Color(0xFF581CD8),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    'Add your incomes and expenses',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                  expenses.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: getExpenses(),
                        )
                      : incomes.isNotEmpty
                          ? SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 30),
                                    child: Image.asset('assets/home_icon.png'),
                                  ),
                                  const Text(
                                    'There\'s no info',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'SF Pro Text',
                                        color: Color(0xFF581CD8),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    'Add your expenses to track your history',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            )
                          : SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 30),
                                    child: Image.asset('assets/home_icon.png'),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Text(
                                      'There\'s no info',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'SF Pro Text',
                                          color: Color(0xFF581CD8),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Text(
                                    'Add your expenses and incomes',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const AddExpensesIncomesPage()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: const Color(0xFF581CD8),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                    'Add new',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            const BottomBar()
          ],
        ),
      ),
    );
  }

  Widget getIncomes() {
    List<Widget> list = [];
    for (var income in incomes) {
      list.add(Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFFF9F6FF)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'CATEGORY',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                income.type!.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Color(0xFF581CD8),
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Divider(
                height: 1,
                color: Colors.black.withOpacity(0.09),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        'AMOUNT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      '${income.cost!.toStringAsFixed(0)}\$',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        'DATE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      income.date!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            )
          ],
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

  Widget getExpenses() {
    List<Widget> list = [];
    for (var expense in expenses) {
      list.add(Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFFF9F6FF)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'CATEGORY',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                expense.type!.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Color(0xFF581CD8),
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Divider(
                height: 1,
                color: Colors.black.withOpacity(0.09),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        'AMOUNT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      '${expense.cost!.toStringAsFixed(0)}\$',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        'DATE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      expense.date!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            )
          ],
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

Future<void> addDataToSP() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('expenses', jsonEncode(expenses));
  prefs.setString('incomes', jsonEncode(incomes));
  prefs.setString('results', jsonEncode(results));
}

void getDataFromSP(Function() callBack) async {
  final prefs = await SharedPreferences.getInstance();

  final List<dynamic> jsonData1 =
      jsonDecode(prefs.getString('expenses') ?? '[]');
  final List<dynamic> jsonData2 =
      jsonDecode(prefs.getString('incomes') ?? '[]');
  final List<dynamic> jsonData3 =
      jsonDecode(prefs.getString('results') ?? '[]');

  expenses = jsonData1.map<ExpenseItem>((jsonList) {
    {
      return ExpenseItem.fromJson(jsonList);
    }
  }).toList();
  incomes = jsonData2.map<IncomeItem>((jsonList) {
    {
      return IncomeItem.fromJson(jsonList);
    }
  }).toList();
  results = jsonData3.map<Result>((jsonList) {
    {
      return Result.fromJson(jsonList);
    }
  }).toList();
  callBack();
}
