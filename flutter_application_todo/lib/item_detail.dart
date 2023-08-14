import 'package:flutter/material.dart';
import 'item.dart';

class ItemDetail extends StatelessWidget {
  ItemDetail({super.key, required this.item});
  final _formkey = GlobalKey<FormState>();
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ToDoの詳細')),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.person),
                  hintText: '題名を入力してください',
                  labelText: '題名',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '題名を入力してください';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
