

import 'package:flutter/material.dart';

class SortbyClickable extends StatefulWidget {
  const SortbyClickable({Key? key}) : super(key: key);

  @override
  State<SortbyClickable> createState() => _SortbyClickableState();
}

class _SortbyClickableState extends State<SortbyClickable> {
  List<String> Filters_Sortby = [
    "Price: Low to high",
    "Price: High to Low",
    "Popular: Most Purchased"
  ];
  String issortbyselected = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        runSpacing: 10,
        spacing: 10,
        direction: Axis.horizontal,
        children: Filters_Sortby.map(
              (e) => InkWell(
            onTap: () {
              setState(() {
                issortbyselected = e;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: issortbyselected == e ? Colors.teal : Colors.white,
                  border: Border.all(
                    width: 1,
                    color: issortbyselected == e ? Colors.teal: Colors.black,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),

              // color: const Color(0xff006A6A),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  e,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    // height: 2
                  ),
                ),
              ),
            ),
          ),
        ).toList(),
      ),
    );
  }
}