import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'app.dart';
import 'stores/products_store.dart';

void main() {
  // GetIt.I.registerFactory(() => ProductsStore());
  GetIt.I.registerSingleton(ProductsStore());

  runApp(App());
}

//flutter packages pub run build_runner watch --delete-conflicting-outputs
