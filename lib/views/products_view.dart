import '../stores/products_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'product_view.dart';

class ProductsView extends StatelessWidget {
  final store = GetIt.I.get<ProductsStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => ProductView(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Observer(
        builder: (_) {
          final products = store.products.toList();
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 1.8,
                  child: ListTile(
                    title: Text(products[index].title),
                    subtitle: Text(products[index].subtitle),
                    onTap: () {
                      print(products[index].title);
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
