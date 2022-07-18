// import 'package:cal_transactions/widget/add_transactions.dart';
// import 'package:cal_transactions/widget/transaction_list.dart';
// import 'package:flutter/material.dart';
// import '../models/transaction.dart';

// class UserTransaction extends StatefulWidget {
//   UserTransaction({Key? key}) : super(key: key);

//   @override
//   State<UserTransaction> createState() => _UserTransactionState();
// }

// class _UserTransactionState extends State<UserTransaction> {

//   final List<Transaction> _userTransactions = [
//     Transaction(
//       id: 't1',
//       title: 'New Shoes',
//       amount: 69.99,
//       date: DateTime.now(),
//     ),
//     Transaction(
//       id: 't2',
//       title: 'Weekly Groceries',
//       amount: 16.53,
//       date: DateTime.now(),
//     ),
    
//   ];

//   void _addNewTransaction(String title, double amount)
//     {
//       final addNew = Transaction(
//         title: title,
//         amount: amount,
//         date: DateTime.now(),
//         id: DateTime.now().toString(),
//       );

//       setState(() {
//         _userTransactions.add(addNew);
//       });
//     }  @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         AddTransaction(_addNewTransaction),
//         TransactionList(_userTransactions)
//       ]
//     );
//   }
// }