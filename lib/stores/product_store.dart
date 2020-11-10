import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'products_store.dart';

part 'product_store.g.dart';

class ProductStore = _ProductStoreBase with _$ProductStore;

abstract class _ProductStoreBase with Store {
  @observable
  String title = '';

  @observable
  String subtitle = '';

  @observable
  double value = 0.0;

  @action
  void save() {
    final products = GetIt.I.get<ProductsStore>();
    products.add(title, subtitle, value);
  }
}
