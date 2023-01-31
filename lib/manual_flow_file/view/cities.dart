import 'package:flutter/material.dart';

import 'bike_purchase_year.dart';
import 'citydata.dart';

class Cities extends StatefulWidget {
  const Cities({Key? key}) : super(key: key);

  @override
  State<Cities> createState() => _CitiesState();
}

class _CitiesState extends State<Cities> {
  List<String> suggestions = [];
  List<String> bike_details = [
    "Delhi",
    "Mumbai",
    "Bangalore",
    "Jaipur",
    "Nagpur",
    "Ahemdabad",
    "Pune",
    "Nashik",
    // "Delhi AO-01",
    // "Delhi AO-02",
    // "Delhi AO-03",
    // "Mumbai PO-01",
    // "Mumbai AQO-02",
    // "Mumbai ASO-03",
    // "Banglalore AO-01",
    // "Banglalore AO-02",
  ];
  final TextEditingController _Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    suggestions = bike_details;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.grey.shade300,
              height: 40,
              child: TextFormField(
                controller: _Controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  labelText: "search bike model",
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (String value) {
                  if (value.isEmpty) {
                    setState(() {
                      suggestions = bike_details;
                    });
                  } else {
                    searchStates(value);
                  }
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Popular cities",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w700, height: 2),
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
                        padding: EdgeInsets.only(top: 20),
                        itemCount: suggestions.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20))),
                                  backgroundColor: Colors.transparent,
                                  // enableDrag: true,
                                  context: context,
                                  builder: (ctx) {
                                    return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.8,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(20)),
                                      ),
                                      child: CityData(),
                                    );
                                  });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      suggestions[index],
                                    ),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_forward_ios),
                                    ),
                                    hoverColor: Colors.redAccent,
                                  ),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                ],
                              ),
                            ),
                          );
                        })),
          ],
        ),
      ),
    );
  }

  void searchStates(String value) {
    suggestions = bike_details.where((element) {
      final statelement1 = element.toLowerCase();
      final stateelement2 = value.toLowerCase();
      return statelement1.contains(stateelement2);
    }).toList();
    setState(() {});
  }
}
