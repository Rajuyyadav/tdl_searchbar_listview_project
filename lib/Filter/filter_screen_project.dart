import 'package:flutter/material.dart';
import 'package:searchbar_listview/Filter/plan_type.dart';
import 'package:searchbar_listview/Filter/sort_by_class.dart';
import 'package:searchbar_listview/Filter/plan_duration.dart';
import 'package:searchbar_listview/planDurationClass.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  PlanDurationClass? planDurationClass;
  List<String> planDurationYears = ["1 years", "2 Years", "3 years"];
  List<String> filtersSortBy = [
    "Price: Low to high",
    "Price: High to Low",
    "Popular: Most Purchased"
  ];
  String isSelected = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,

                // shape: const RoundedRectangleBorder(
                //     borderRadius:
                //         BorderRadius.vertical(top: Radius.circular(20))),

                context: context,
                builder: (context) {
                  return Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      height: MediaQuery.of(context).size.height * 0.72,
                      child: bottomSheet());
                });
          },
          child: const Text("data"),
        ),
      ),
    );
  }

  Widget bottomSheet() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
                height: 6,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Filters",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Plan Duration",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),

          const Plandurationclickable(), //                        rowContainer new method for row1
          //

          const SizedBox(
            height: 20,
          ),
          const Text(
            "Plan Type",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),

          const PlanTypeClickable(), //                                  2nd row

          const SizedBox(
            height: 15,
          ),
          const Text(
            "Sort By",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          const SortbyClickable(), //                                  3rd row container

          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xff8800EC),
                  borderRadius:  BorderRadius.all(Radius.circular(5))),

              width: MediaQuery.of(context).size.width *
                  1.0, //or   double.infinity,
              child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Center(
                    child: Text(
                      "APPLY",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
