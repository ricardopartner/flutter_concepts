import 'package:mobx/mobx.dart';
import 'product_store.dart';

part 'products_store.g.dart';

class ProductsStore = _ProductsStoreBase with _$ProductsStore;

abstract class _ProductsStoreBase with Store {
  _ProductsStoreBase() {
    for (var i = 0; i < 3; i++) {
      final product = ProductStore();
      product.subtitle = 'Subtitulo $i';
      product.title = 'Produto $i';
      product.value = 10.1 * i;
      products.add(product);
    }
  }

  @observable
  ObservableList<ProductStore> products = ObservableList<ProductStore>();

  @action
  void add(String title, String subtitle, double value) {
    final product = ProductStore();
    product.subtitle = title;
    product.title = subtitle;
    product.value = value;
    products.add(product);
  }
}
