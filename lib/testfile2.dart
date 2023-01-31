import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';



class TestFile2 extends StatelessWidget {
  const TestFile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("data")),




    );
  }
}


//
// class CounterClass = CounterBaseClass with _$CounterClass;
//
//
// abstract class CounterBaseClass with Store{
//
// }





// class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}