import 'views/products_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Partner ToDo',
      home: ProductsView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
