import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:searchbar_listview/testserialization/modelclass/student_modal_2.dart';

import '../modelclass/student_modal_1.dart';

class Viewclass extends StatefulWidget {
  const Viewclass({Key? key}) : super(key: key);

  @override
  State<Viewclass> createState() => _ViewclassState();
}

class _ViewclassState extends State<Viewclass> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadjson();
    loadJsonData();
  }

//    {}=>Object,   [{},{},{}]=>list of objects.

  StudentModal1? _data; //when the data is like {"data":[.......]},then means when the list of objects have their name

  Future<StudentModal1?> loadjson() async {
    final String response = await rootBundle.loadString("assets/student.json");
    final decodedata = jsonDecode(response);
    setState(() {
      _data = StudentModal1.fromJson(decodedata);
    });
    // print(_data?.data?[0].name);
    return null;
  }

//  =========================================2
//   StudentModal2? _dataa;
//
//   Future<StudentModal2?> loadJsonData() async {
//     final String jsontext = await rootBundle.loadString("assets/student2.json");
//     final newdata = json.decode(jsontext);
//
//     setState(() {
//       _dataa = StudentModal2.fromJson(newdata);
//
//     });
//     print(_dataa?.users?[0].name);
//   }
//=====================================================

  List<Userdata>? _dataa; //when the list of object doesn't have name  {[....]}

  Future<List<Userdata>?> loadJsonData() async {
    final String jsontext = await rootBundle.loadString("assets/student2.json");
    final newdata = json.decode(jsontext);

    setState(() {
      // _dataa = List<Userdata>.fromJson(newdata);

      _dataa =
          List<Userdata>.from(newdata.map((model) => Userdata.fromJson(model)));

      print(_dataa?[1].scores?[0].type);
    });
    print(_dataa?[1].iId);
  }

// ======================================================

  @override
  Widget build(BuildContext context) {
    // print("student data 1 ${_data?.data?[0].name}");
    // print("student data 2 ${_dataa?.users[0].name}");
    print("first === ${_dataa?[0].name}");

    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 50,
        ),

        // Column(
        //   children:_data?.data?[1].scores?.map((e) =>Text('${e.type} - ${e.score}') ).toList()?? [],
        // ),

        TextButton(onPressed: loadjson, child: const Text("data1")),
        TextButton(onPressed: loadJsonData, child: const Text("data2")),
        const Center(child: Text("sdjbnc ")),
      ],
    ));
  }
}

// {
// "name": "John Smith",
// "email": "john@example.com"
// }
