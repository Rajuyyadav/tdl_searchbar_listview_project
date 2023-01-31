import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import 'MobxPractiseSumsDartFileOne_2_page.dart';
import '../counter_class_mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../mobx_practise_two.dart';

class MobxPractiseSumsDartFileOne extends StatelessWidget {
   MobxPractiseSumsDartFileOne({Key? key}) : super(key: key);


final Controller controller =Controller();



  // final CounterClass counterclass = CounterClass();

  // final MobxPractiseTwo control = MobxPractiseTwo();

  @override
  Widget build(BuildContext context) {
    final control = Provider.of<MobxPractiseTwo>(context);

    // print(counterclass.value);
    return Scaffold(
      appBar: AppBar(
        actions: [
          // IconButton(
          //   onPressed: () => Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (_) => MobxPractiseSumsDartFileOne2Page())),
          //   icon: Icon(Icons.arrow_forward),
          // ),
          InkWell(
            child: Icon(Icons.arrow_forward),
            onTap: ()=>
        Navigator.
              push(context, MaterialPageRoute(builder: (context)=>
                  MobxPractiseSumsDartFileOne2Page()))
          )


        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: control.incrementCounter,
              child: const Text("page 1 count:inc")),
          TextButton(
              onPressed: control.decrementCounter,
              child: const Text("page 1 count:dec")),
          Text(
              "${control.value}"), //     this is not right it needs hot_reload.

          Observer(//                             this is right
              builder: (_) {
            return Text("${control.value}");
          }),



          Observer(builder: (_) {
            return SizedBox(
              width: 1024,
              height: 512,
              child: ChildWidget(
                list: controller.observableList.toList(), // Mobx will detect mutations to observableList
              ),
            );
          }),




          //Text("${counterclass.value}"),
        ],
      )),
    );
  }
}

/*if we just want to compute something after action is performed we should use computed instead of observable */



class Controller {
  final ObservableList<String> observableList = ObservableList<String>();
}


class ChildWidget extends StatelessWidget {
  const ChildWidget({super.key, required this.list});

  /// Don't use ObservableList here otherwise the context for parent widget
  /// observer will change and it will not track these mutations.

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.red,

            width: 112,
            height: 48,
            child: ListTile(
              title: Text(list[index]),
            ),
          );
        });
  }
}

