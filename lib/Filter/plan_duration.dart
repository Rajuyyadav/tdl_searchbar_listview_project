

import 'package:flutter/material.dart';

class Plandurationclickable extends StatefulWidget {
  const Plandurationclickable({Key? key}) : super(key: key);

  @override
  State<Plandurationclickable> createState() => _PlandurationclickableState();
}

class _PlandurationclickableState extends State<Plandurationclickable> {
  List<String> planDurationyears = ["1 years", "2 Years", "3 years"];
  String isselected = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: planDurationyears
            .map((e) => Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            onTap: () {
              setState(() {
                isselected = e;
              });
            },
            child: Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                  color: isselected == e ? Colors.teal : Colors.white,
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius:
                  const BorderRadius.all(Radius.circular(5))),
              child: Center(child: Text(e,style: TextStyle(color: isselected == e ? Colors.white : Colors.black,),)),
            ),
          ),
        ))
            .toList(),
      ),
    );
  }
}