import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  int max = 10;

  @observable
  int count = 0;

  @computed
  String get message {
    if (count == max) {
      return "Você está no limite";
    }

    return "";
  }

  @action
  void increment() {
    if (count < max) count++;
  }

  @action
  void decriment() {
    count--;
  }
}
