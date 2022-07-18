import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddTransaction extends StatefulWidget {
  final Function addTx;

  AddTransaction(this.addTx);

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();
  DateTime? _selectedDate;

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime.now(),
    ).then((value){
      if(value == null)
        return;
      setState(() {
        _selectedDate = value;
      });
    });
   
    }
  
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
            ),
            Row(
              children: [
                Text(_selectedDate == null ? 'No date selected!' : 'Picked Date: ${DateFormat.yMMMd().format(_selectedDate??DateTime.now())}'),
                TextButton(onPressed: _presentDatePicker, child: Text('Select date',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),),
              ],
            ),
            ElevatedButton(
              
              onPressed: () {

                widget.addTx(
                    titleController.text, double.parse(amountController.text),  _presentDatePicker);
                Navigator.of(context).pop();
              },
               style: ElevatedButton.styleFrom(
                   primary: Colors.purple, // Background color
                  ),
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
        ));
  }
}
