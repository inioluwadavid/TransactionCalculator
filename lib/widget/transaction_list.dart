import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deletTx;

  TransactionList(this.transactions, this.deletTx);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: transactions.isEmpty
            ? Column(
                children: [
                  Text('No transaction yet'),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/loading.webp',
                    height: 100,
                  ),
                ],
              )
            : ListView.builder(
                itemBuilder: (ctx, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 5,
                    ),
                    elevation: 5,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: FittedBox(
                            child: Text(
                              '\$${transactions[index].amount}',
                            ),
                          ),
                        ),
                      ),
                      title: Text(
                        transactions[index].title,
                      ),
                      subtitle: Text(
                        DateFormat.yMMMd().format(transactions[index].date),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => deletTx(transactions[index].id),
                      ),
                    ),
                  );
                },
                itemCount: transactions.length,
              ));
  }
}
