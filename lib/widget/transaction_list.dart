import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
 

  final List<Transaction> transactions;

  TransactionList( this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
       itemBuilder:(ctx, index) {
          return Card(
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
    
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          ),
                        ),
                        child: Text('\$${transactions[index].amount}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.purpleAccent
                            )),
                        ),
                        
                        
                        
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(transactions[index].title,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              )),
                            
                          Text(
                            DateFormat('yyyy/MM/dd').format(transactions[index].date),
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                              )),
                       
                        ],
                      )
                    ]),
                  );
      }, 
        itemCount: transactions.length,
        
             
      )
                
    );
  }
}