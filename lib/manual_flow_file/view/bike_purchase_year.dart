import 'package:flutter/material.dart';
class Newclassfornewlist2 extends StatefulWidget {
  const Newclassfornewlist2({Key? key}) : super(key: key);

  @override
  State<Newclassfornewlist2> createState() => _Newclassfornewlist2State();
}

class _Newclassfornewlist2State extends State<Newclassfornewlist2> {
  List<String> yearslist = [
    "2021",
    "2020",
    "2019",
    "2018",
    "2017",
    "2016",
    '2015',
    "2014",
    "2013",
    "2012",
    "2011",
    "2010",
    "2009",
    "2008",
    "2007"
  ];
  String seclectedyearslst = "";

  @override
  Widget build(BuildContext context) {
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
                height: 5,
                width: 50,
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              )),
          const SizedBox(
            height: 14,
          ),
          const Text(
            "Select your bike purchase year",
            style:
            TextStyle(fontSize: 16, fontWeight: FontWeight.w700, height: 2),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: yearslist.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 3.5,
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        seclectedyearslst = yearslist[index];
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: seclectedyearslst == yearslist[index]
                                ? Colors.teal
                                : Colors.white,
                            border: Border.all(width: 1),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                        child: Center(child: Text(yearslist[index]))),
                  );
                }),
          )
        ],
      ),
    );
  }
}