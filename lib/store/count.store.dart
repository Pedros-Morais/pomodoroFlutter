import 'package:mobx/mobx.dart';

part 'count.store.g.dart';

class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store {
  @observable
  int counter = 0;

  @action
  void Add() {
    counter++;
  }
}
