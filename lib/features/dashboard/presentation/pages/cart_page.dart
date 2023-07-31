import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Transcations'),
        centerTitle: true,
        actions: const [Icon(Icons.shopping_cart_checkout_outlined)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12)),
              child: const ListTile(
                title: Text('Gass'),
                subtitle: Text('10.USD'),
                leading: Icon(Icons.delete),
                trailing: Text('Quantity : 2'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12)),
              child: const ListTile(
                title: Text('wallmart'),
                subtitle: Text('99.USD'),
                leading: Icon(Icons.delete),
                trailing: Text('Quantity : 3'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12)),
              child: const ListTile(
                title: Text('shopping'),
                subtitle: Text('120.USD'),
                leading: Icon(Icons.delete),
                trailing: Text('Quantity : 4'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
