import 'package:mobx/mobx.dart';

part 'mobx_practise_two.g.dart';

class MobxPractiseTwo extends _MobxPractiseTwo with _$MobxPractiseTwo{}

abstract class _MobxPractiseTwo with Store {
  @observable
  int value = 0;

  @action
  void incrementCounter() {
    value++;
  }

  @action
  void decrementCounter() {
    value--;
  }






  @observable
 var metrics =  ObservableList<int>();


  @action
  void add(int data)=>metrics.add(data);

@action
  void remove(int data)=>metrics.remove(data);



}

