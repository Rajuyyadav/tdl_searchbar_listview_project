import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../counter_class_mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../mobx_practise_two.dart';

class MobxPractiseSumsDartFileOne2Page extends StatelessWidget {
  const MobxPractiseSumsDartFileOne2Page({Key? key}) : super(key: key);

  // final CounterClass counterclass = CounterClass();

  // final MobxPractiseTwo control = MobxPractiseTwo();

  @override
  Widget build(BuildContext context) {
    // final counterClass =Provider.of<CounterClass>(context);

    final control = Provider.of<MobxPractiseTwo>(context);

    // print(counterclass.value);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: control.incrementCounter,
              child: const Text("page 2 count:inc")),
          TextButton(
              onPressed: control.decrementCounter,
              child: const Text("page 2 count:dec")),

          // Text("${control.value}"),

          Observer(builder: (_) {
            return Text("${control.value}");
          }),
          //Text("${counterclass.value}"),
        ],
      )),
    );
  }
} /*if we just want to compute something after action is performed we should use computed instead of observable */



// observable list
