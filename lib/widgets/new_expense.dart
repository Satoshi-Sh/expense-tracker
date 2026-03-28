import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense(this.context, {super.key});

  final BuildContext context;

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextField(
            controller: _amountController,
            maxLength: 50,
            decoration: InputDecoration(
              label: Text('Amount'),
            ),
            keyboardType: TextInputType.number,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(
                    "${_titleController.text} \$${_amountController.text}",
                  );
                },
                child: Text('Save Expense'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  print('cancel');
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
