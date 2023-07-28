import 'package:banking_app_ui/core/routes/route_constants.dart';
import 'package:banking_app_ui/features/dashboard/presentation/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Add custom container properties like height, width, padding, etc.
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              // Add custom container properties for each transaction ListTile (if needed)
              margin: EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey[100],
              ),
              child: ListTile(
                onTap: () => context.go('${PagePath.dashboard}/${PagePath.cartpage}'),
                title: Text(
                  transactions[index].name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                subtitle: Text(
                  transactions[index].subtitle,
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                trailing: Container(
                  width: 100, // Set the desired width for the container
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'USD.120.00',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: const Icon(
                          Icons.forward,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
