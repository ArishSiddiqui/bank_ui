import 'package:flutter/material.dart';

// Sample transaction data class (replace this with your actual data model)
class Transaction {
  final String name;
  final double amount;
  final String subtitle;

  Transaction(
      {required this.name, required this.amount, required this.subtitle});
}

// Sample list of transactions (replace this with your actual transaction data list)
List<Transaction> transactions = [
  Transaction(name: 'Groceries', amount: 50.0, subtitle: 'Wallmart '),
  Transaction(name: 'Gas', amount: 30.0, subtitle: 'Wallmart '),
  Transaction(name: 'Shopping', amount: 100.0, subtitle: 'Wallmart '),
];

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Add custom container properties like height, width, padding, etc.
      padding: EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            // Add custom container properties for each transaction ListTile (if needed)
            margin: EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.grey[200],
            ),
            child: ListTile(
                // Replace this with your desired icon
                title: Text(transactions[index].name),
                subtitle: Text(transactions[index].subtitle),
                trailing: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('120.00'), Icon(Icons.forward)]),
                )),
          );
        },
      ),
    );
  }
}
