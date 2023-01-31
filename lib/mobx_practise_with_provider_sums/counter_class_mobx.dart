import 'package:mobx/mobx.dart';

part 'counter_class_mobx.g.dart';

class CounterClass = CounterBaseClass with _$CounterClass;

abstract class CounterBaseClass with Store {
  @observable
  int value = 0;

  @action
  void increment_counter() {
    value++;
  }

  @action
  void decrement_counter() {
    value--;
  }
}
