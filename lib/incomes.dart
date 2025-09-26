import 'package:flutter/material.dart';
import 'package:myfinancesapp/main.dart';

class CreateIncome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Incomes'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(child: Text('AddIncomes')),
    );
  }
}
