import 'package:flutter/material.dart';

class Sewrchlisttask extends StatefulWidget {
  const Sewrchlisttask({Key? key}) : super(key: key);

  @override
  State<Sewrchlisttask> createState() => _SewrchlisttaskState();
}

class _SewrchlisttaskState extends State<Sewrchlisttask> {
  final TextEditingController _Controller = TextEditingController();

  List<String> suggestions = [];
  List items = List.generate(
      10, (index) => "index$index"); //-----autogenerate ===========

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
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    suggestions = states;
  }

  @override
  Widget build(BuildContext context) {
    print(items);

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
              //                                ==================textfield

              controller: _Controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "enter the state names"),
              onChanged:
                  searchStates, //                  ============onchanged method
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: suggestions.length,
                    itemBuilder: (ctx, index) => InkWell(
                        onTap: () {
                          setState(() {
                            _Controller.text = suggestions[
                                index]; //         textfild controller value from listview   =========================================
                          });
                        },
                        // onTap()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> ReviewAndConfirm())),

                        child: Text(suggestions[index])))),
            const ExpansionTile(
              title: Text("hello"),
              children: [
                Text("welcome"),
              ],
            )
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
    }).toList();
    setState(() {});
  }
}

// ReviewAndConfirm
// List items=List.generate(10, (index) => "index$index");
class BookPage {
  final Book book;

  BookPage(this.book);
  // Widget build

}

class Book {
  final String name;

  Book(this.name);
}
