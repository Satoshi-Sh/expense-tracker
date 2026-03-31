import 'package:flutter/material.dart';
import '../models/expense.dart';
import '../widgets/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.deleteExpense,
  });
  final List<Expense> expenses;
  final void Function(Expense) deleteExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        onDismissed: (_) {
          deleteExpense(expenses[index]);
        },
        key: ValueKey(index),
        child: ExpenseItem(expenses[index]),
      ),
    );
  }
}
