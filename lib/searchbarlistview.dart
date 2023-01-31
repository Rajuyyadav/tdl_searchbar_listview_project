import 'package:flutter/material.dart';

class Searchbarlistview extends StatefulWidget {
  const Searchbarlistview({Key? key}) : super(key: key);

  @override
  State<Searchbarlistview> createState() => _SearchbarlistviewState();
}

class _SearchbarlistviewState extends State<Searchbarlistview> {
  TextEditingController _Controller = TextEditingController();
  List<String> suggestions = [];
  List<String> states = [
    "Andhra Pradesh",
    "Amaravati",
    "Arunachal Pradesh",
    "Itanagar",
    "Assam",
    "Dispur",
    "Bihar",
    "Patna",
    "Chhattisgarh",
    "Raipur",
    "Goa",
    "Panaji",
    "Gujarat",
    "Gandhinagar",
    "Haryana",
    "Chandigarh",
    "Himachal Pradesh",
    "Shimla",
    "Jharkhand",
    "Ranchi",
    "Karnataka",
    "Bengaluru",
    "Kerala",
    "Thiruvananthapuram",
    "Madhya Pradesh",
    "Bhopal",
    "Maharashtra",
    "Mumbai",
    "Manipur",
    "Imphal",
    "Meghalaya",
    "Shillong",
    "Mizoram",
    "Aizawl",
    "Nagaland",
    "Kohima",
    "Odisha",
    "Bhubaneswar",
    "Punjab",
    "Chandigarh",
    "Rajasthan",
    "Jaipur",
    "Sikkim",
    "Gangtok",
    "Tamil Nadu",
    "Chennai",
    "Telangana",
    "Hyderabad",
    "Tripura",
    "Agartala",
    "Uttar Pradesh",
    "Lucknow",
    "Uttarakhand",
    "Dehradun",
    "West Bengal",
    "Kolkata"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    suggestions = states;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _Controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "enter the statenames"),
              onChanged: (String value) {
                if (value.isEmpty) {
                  setState(() {
                    suggestions = states;
                  });
                } else {
                  searchStates(value);
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            suggestions.isEmpty
                ? InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Center(
                      child: Text('No Results Found'),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                        itemCount: /*suggestions.isNotEmpty ?*/ suggestions
                            .length /*: states.length*/,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(/*suggestions.isNotEmpty ? */ suggestions[
                                index] /* : states[index]*/),
                          );
                        })),
          ],
        ),
      ),
    );
  }

  void searchStates(String value) {
    suggestions = states.where((element) {
      final statelement1 = element.toLowerCase();
      final stateelement2 = value.toLowerCase();
      return statelement1.contains(stateelement2);
      // return element.startsWith(states);
    }).toList();
    setState(() {});
  }

  // Widget makeDismissible({required DraggableScrollableSheet child}) {
  //   return GestureDetector(onTap: ()=> Navigator.of(context).pop(),
  //     child: GestureDetector(onTap: (){},child: child,),);
  // }
}
