import 'package:finance_app4/model/expense_item.dart';
import 'package:finance_app4/model/income_item.dart';
import 'package:finance_app4/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class AddExpensesIncomesPage extends StatefulWidget {
  const AddExpensesIncomesPage({super.key});

  @override
  State<AddExpensesIncomesPage> createState() => _AddExpensesIncomesPageState();
}

class _AddExpensesIncomesPageState extends State<AddExpensesIncomesPage> {
  TextEditingController incomeCostController = TextEditingController();
  TextEditingController incomeDateController = TextEditingController();
  TextEditingController expenseCostController = TextEditingController();
  TextEditingController expenseDateController = TextEditingController();
  EIncomeType selectedIncome = EIncomeType.salary;
  EExpenseType? selectedExpense = EExpenseType.entertainment;
  DateTime currentDate = DateTime.now();
  List<EExpenseType> expenseTypeList = [
    EExpenseType.food,
    EExpenseType.financialOperations,
    EExpenseType.travel,
    EExpenseType.entertainment,
    EExpenseType.other,
    EExpenseType.unexpected,
  ];
  List<EIncomeType> incomeTypeList = [
    EIncomeType.salary,
    EIncomeType.financialOperations,
    EIncomeType.social
  ];

  int currentState = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 22),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: Row(
              children: [
                Text(
                  'New operation',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
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
                  onTap: (index) {
                    currentState = index;
                    setState(() {});
                  },
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
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: FormField<EIncomeType>(
                            builder: (FormFieldState<EIncomeType> state) {
                              return InputDecorator(
                                decoration: InputDecoration(
                                    prefixIcon:
                                        Image.asset('assets/category2.png'),
                                    filled: true,
                                    fillColor: const Color(0xFFF9F6FF),
                                    labelStyle: const TextStyle(
                                      fontFamily: 'SF Pro Text',
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none,
                                    )),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<EIncomeType>(
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Color(0xFF581CD8),
                                    ),
                                    value: selectedIncome,
                                    isDense: true,
                                    onChanged: (EIncomeType? newValue) {
                                      setState(() {
                                        selectedIncome = newValue!;
                                        state.didChange(newValue);
                                      });
                                    },
                                    items:
                                        incomeTypeList.map((EIncomeType value) {
                                      return DropdownMenuItem<EIncomeType>(
                                        value: value,
                                        child: Text(value.text,
                                            style: const TextStyle(
                                                fontFamily: 'SF Pro Text',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16)),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: TextField(
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            controller: incomeCostController,
                            style: const TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                            decoration: InputDecoration(
                              prefixIcon: incomeCostController.text.isEmpty
                                  ? Image.asset('assets/amount.png')
                                  : Image.asset('assets/amount2.png'),
                              hintText: '\$ Amount',
                              hintStyle: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.4),
                                  fontSize: 16),
                              filled: true,
                              fillColor: const Color(0xFFF9F6FF),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: (text) {
                              incomeCostController.text = text;

                              setState(() {});
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: TextField(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Dialog(
                                            elevation: 0,
                                            child: SizedBox(
                                              width: 300,
                                              height: 200,
                                              child: CupertinoTheme(
                                                data: const CupertinoThemeData(
                                                  brightness: Brightness.light,
                                                ),
                                                child: CupertinoDatePicker(
                                                  mode: CupertinoDatePickerMode
                                                      .date,
                                                  initialDateTime:
                                                      DateTime.now(),
                                                  onDateTimeChanged:
                                                      (DateTime newDate) {
                                                    currentDate = newDate;
                                                    incomeDateController.text =
                                                        DateFormat("MMMM dd-yy")
                                                            .format(newDate);
                                                    setState(() {});
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ));
                            },
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            controller: incomeDateController,
                            style: const TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                            decoration: InputDecoration(
                              prefixIcon: incomeDateController.text.isEmpty
                                  ? Image.asset('assets/date.png')
                                  : Image.asset('assets/date2.png'),
                              hintText: 'Date',
                              hintStyle: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.4),
                                  fontSize: 16),
                              filled: true,
                              fillColor: const Color(0xFFF9F6FF),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: (text) {
                              incomeDateController.text = text;

                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: FormField<EExpenseType>(
                            builder: (FormFieldState<EExpenseType> state) {
                              return InputDecorator(
                                decoration: InputDecoration(
                                    prefixIcon:
                                        Image.asset('assets/category2.png'),
                                    filled: true,
                                    fillColor: const Color(0xFFF9F6FF),
                                    labelStyle: const TextStyle(
                                      fontFamily: 'SF Pro Text',
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none,
                                    )),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<EExpenseType>(
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Color(0xFF581CD8),
                                    ),
                                    value: selectedExpense,
                                    isDense: true,
                                    onChanged: (EExpenseType? newValue) {
                                      setState(() {
                                        selectedExpense = newValue!;
                                        state.didChange(newValue);
                                      });
                                    },
                                    items: expenseTypeList
                                        .map((EExpenseType value) {
                                      return DropdownMenuItem<EExpenseType>(
                                        value: value,
                                        child: Text(value.text,
                                            style: const TextStyle(
                                                fontFamily: 'SF Pro Text',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16)),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: TextField(
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            controller: expenseCostController,
                            style: const TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                            decoration: InputDecoration(
                              prefixIcon: expenseCostController.text.isEmpty
                                  ? Image.asset('assets/amount.png')
                                  : Image.asset('assets/amount2.png'),
                              hintText: '\$ Amount',
                              hintStyle: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.4),
                                  fontSize: 16),
                              filled: true,
                              fillColor: const Color(0xFFF9F6FF),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: (text) {
                              expenseCostController.text = text;

                              setState(() {});
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: TextField(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Dialog(
                                            elevation: 0,
                                            child: SizedBox(
                                              width: 300,
                                              height: 200,
                                              child: CupertinoTheme(
                                                data: const CupertinoThemeData(
                                                  brightness: Brightness.light,
                                                ),
                                                child: CupertinoDatePicker(
                                                  mode: CupertinoDatePickerMode
                                                      .date,
                                                  initialDateTime:
                                                      DateTime.now(),
                                                  onDateTimeChanged:
                                                      (DateTime newDate) {
                                                    currentDate = newDate;
                                                    expenseDateController.text =
                                                        DateFormat("MMMM dd-yy")
                                                            .format(newDate);
                                                    setState(() {});
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ));
                            },
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            controller: expenseDateController,
                            style: const TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                            decoration: InputDecoration(
                              prefixIcon: expenseDateController.text.isEmpty
                                  ? Image.asset('assets/date.png')
                                  : Image.asset('assets/date2.png'),
                              hintText: 'Date',
                              hintStyle: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.4),
                                  fontSize: 16),
                              filled: true,
                              fillColor: const Color(0xFFF9F6FF),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: (text) {
                              expenseDateController.text = text;

                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
            child: InkWell(
              onTap: () {
                if ((currentState == 0 &&
                        incomeCostController.text.isNotEmpty &&
                        incomeDateController.text.isNotEmpty) ||
                    (currentState == 1 &&
                        expenseCostController.text.isNotEmpty &&
                        expenseDateController.text.isNotEmpty)) {
                  if (currentState == 0) {
                    IncomeItem income = IncomeItem();
                    income.cost = double.tryParse(incomeCostController.text);
                    income.type = selectedIncome;
                    income.date = incomeDateController.text;
                    incomes.add(income);
                  } else {
                    ExpenseItem expense = ExpenseItem();
                    expense.cost = double.tryParse(expenseCostController.text);
                    expense.type = selectedExpense;
                    expense.date = expenseDateController.text;
                    expenses.add(expense);
                  }
                  addDataToSP();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HomePage()),
                  );
                }
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: currentState == 0
                        ? incomeDateController.text.isNotEmpty &&
                                incomeCostController.text.isNotEmpty
                            ? const Color(0xFF581CD8)
                            : const Color(0xFF581CD8).withOpacity(0.7)
                        : expenseDateController.text.isNotEmpty &&
                                expenseCostController.text.isNotEmpty
                            ? const Color(0xFF581CD8)
                            : const Color(0xFF581CD8).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  'Next',
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
        ],
      ),
    ));
  }
}
