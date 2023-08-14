import 'package:flutter/material.dart';
import 'item_detail.dart';
import 'item.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final products = <Item>[
    const Item(name: 'apple', price: 300),
    const Item(name: 'banana', price: 200),
    const Item(name: 'carrot', price: 150),
    const Item(name: 'tuna', price: 900),
    const Item(name: 'beef', price: 1200),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Product List'),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(products[index].name),
                onTap: () {
                  // Navigate to the product details page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemDetail(item: products[index]),
                    ),
                  );
                },
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'add TodoList',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
