import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/models/expenses.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key, required this.expenses});

  final Expenses expenses;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Text(expenses.title),
            Row(
              children: [
                /// toStringAsFixed(2) - to get 2 decimal places
                Text('\$ ${expenses.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Icon(categoryIcons[expenses.category]),
                const SizedBox(width: 8),
                Text(expenses.formattedDate)
              ],
            )
          ],
        ),
      ),
    );
  }
}
