import 'package:flutter/material.dart';
import 'package:expense_tracker/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      home: Expenses(),
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(99, 40, 67, 219),
      ),
    ),
  );
}
