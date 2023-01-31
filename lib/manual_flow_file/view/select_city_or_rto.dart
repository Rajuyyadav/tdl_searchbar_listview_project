import 'package:flutter/material.dart';

class Newclassfornewlist3 extends StatefulWidget {
  const Newclassfornewlist3({Key? key}) : super(key: key);

  @override
  State<Newclassfornewlist3> createState() => _Newclassfornewlist3State();
}

class _Newclassfornewlist3State extends State<Newclassfornewlist3> {
  List<String> suggestions = [];
  List<String> bike_details = [
    "Delhi AO-01",
    "Delhi AO-02",
    "Delhi AO-03",
    "Mumbai PO-01",
    "Mumbai AQO-02",
    "Mumbai ASO-03",
    "Banglalore AO-01",
    "Banglalore AO-02",

  ];
  final TextEditingController _Controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    suggestions = bike_details;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            style:
            TextStyle(fontSize: 16, fontWeight: FontWeight.w700, height: 2),
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
                  itemCount: suggestions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Card(
                          child: ListTile(
                            title: Text(suggestions[index]),
                          )),
                    );
                  })),
        ],
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