

import 'package:flutter/material.dart';

class PlanTypeClickable extends StatefulWidget {
  const PlanTypeClickable({Key? key}) : super(key: key);

  @override
  State<PlanTypeClickable> createState() => _PlanTypeClickableState();
}

class _PlanTypeClickableState extends State<PlanTypeClickable> {
  // List title=["Comprehensive","Third Party"];
  // List subtitle=["Covers damage for own & other vehicle","Covers damage of other vehicle"];

  bool isplantypeselected1 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isplantypeselected1 = !isplantypeselected1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: isplantypeselected1
                          ?const Color(0xFFF3F0F5): Colors.blue.shade50,
                      border: Border.all(
                        width: 1,
                        color: isplantypeselected1
                            ? const Color(0xFFF3F0F5)
                            :Colors.blue,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Comprehensive",
                            style: TextStyle(
                              // color: Colors.red,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                height: 2),
                          ),
                          Text(
                            "Covers damage for own & other vehicle",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                // color: Color(0xff444347),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                height: 1.6),
                          )
                        ]),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isplantypeselected1 = !isplantypeselected1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: isplantypeselected1
                          ? Colors.blue.shade50
                          : const Color(0xFFF3F0F5),
                      border: Border.all(
                        width: 1,
                        color: isplantypeselected1
                            ? Colors.blue
                            : const Color(0xFFF3F0F5),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Third Party",
                              style: TextStyle(
                                // color: Colors.red,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  height:
                                  2) //            lineheight :20 then20/10=2

                          ),
                          Text(
                            "Covers damage of other vehicle",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                height: 1.6),
                          )
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}