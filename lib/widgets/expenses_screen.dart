import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/models/expenses.dart';
import 'package:flutter_expense_tracker/widgets/expenses_list/expenses_list.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  final List<Expenses> _registeredExpenses = [
    Expenses(
        title: "Title1",
        category: Category.food,
        date: DateTime.now(),
        amount: 19.2),
    Expenses(
        title: "Title2",
        category: Category.travel,
        date: DateTime.now(),
        amount: 52.7545),
    Expenses(
        title: "Title3",
        category: Category.leisure,
        date: DateTime.now(),
        amount: 4.71),
    Expenses(
        title: "Title4",
        category: Category.work,
        date: DateTime.now(),
        amount: 55.78),
    Expenses(
        title: "Title5",
        category: Category.leisure,
        date: DateTime.now(),
        amount: 219.217),
    Expenses(
        title: "Title6",
        category: Category.travel,
        date: DateTime.now(),
        amount: 854.4455),
    Expenses(
        title: "Title7",
        category: Category.work,
        date: DateTime.now(),
        amount: 52.00)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
        title: const Text('Flutter Expense Tracker'),
      ),
      body: Column(
        children: [
          const Text('Chart Showing'),
          Expanded(
              child: ExpenseList(
            expenses: _registeredExpenses,
          ))
        ],
      ),
    );
  }
}
