// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  Computed<String> _$messageComputed;

  @override
  String get message => (_$messageComputed ??=
          Computed<String>(() => super.message, name: '_HomeStoreBase.message'))
      .value;

  final _$maxAtom = Atom(name: '_HomeStoreBase.max');

  @override
  int get max {
    _$maxAtom.reportRead();
    return super.max;
  }

  @override
  set max(int value) {
    _$maxAtom.reportWrite(value, super.max, () {
      super.max = value;
    });
  }

  final _$countAtom = Atom(name: '_HomeStoreBase.count');

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  void increment() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.increment');
    try {
      return super.increment();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decriment() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.decriment');
    try {
      return super.decriment();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
max: ${max},
count: ${count},
message: ${message}
    ''';
  }
}
