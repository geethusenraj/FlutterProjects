import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/models/expenses.dart';
import 'package:flutter_expense_tracker/widgets/expenses_list/expenses_item.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses});

  final List<Expenses> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => ExpensesItem(expenses: expenses[index]));
  }
}
