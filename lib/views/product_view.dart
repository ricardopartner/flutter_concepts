import '../stores/product_store.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  final store = ProductStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produto'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.save();
          Navigator.pop(context);
        },
        child: Icon(
          Icons.save,
        ),
      ),
      body: Column(
        children: [
          TextFormField(
            initialValue: store.title,
            onChanged: (value) {
              store.title = value;
            },
          ),
          TextFormField(
            initialValue: store.subtitle,
            onChanged: (value) {
              store.subtitle = value;
            },
          ),
          TextFormField(
            initialValue: store.value.toString(),
            onChanged: (value) {
              store.value = double.parse(value);
            },
          )
        ],
      ),
    );
  }
}
