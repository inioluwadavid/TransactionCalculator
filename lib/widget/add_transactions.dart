import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  final Function addTx;

  AddTransaction(this.addTx);

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            TextButton(
              onPressed: () {
                addTx(titleController.text, double.parse(amountController.text));
                
            
              },
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purpleAccent),
              ),
            ),
          ]),
        ));
  }
}
