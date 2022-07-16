import 'package:cal_transactions/widget/user_transaction.dart';
import 'package:flutter/material.dart';
import './widget/transaction_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  // to listen to changes
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.purple,
                child: Container(
                    width: double.infinity, child: Text('Transactions')),
                elevation: 5,
              ),
              
              UserTransaction()
            ],
          ),
        ));
  }
}
