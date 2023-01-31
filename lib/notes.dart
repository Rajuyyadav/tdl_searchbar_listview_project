//
// //    {}=>Object,[{},{},{}]=>list of objects.
//
// StudentModal1? _data;   //when the data is like {"data":[.......]},then means when the list of objects have their name
//
// Future<StudentModal1?> loadjson() async {
//   final String response =
//   await rootBundle.loadString("assets/student.json");
//   final decodedata = jsonDecode(response);
//   setState(() {
//     _data = StudentModal1.fromJson(decodedata);
//   });
//   // print(_data?.data?[0].name);
//   return null;
// }
//
// //  =========================================2
// //   StudentModal2? _dataa;
// //
// //   Future<StudentModal2?> loadJsonData() async {
// //     final String jsontext = await rootBundle.loadString("assets/student2.json");
// //     final newdata = json.decode(jsontext);
// //
// //     setState(() {
// //       _dataa = StudentModal2.fromJson(newdata);
// //
// //     });
// //     print(_dataa?.users?[0].name);
// //   }
// //=====================================================
//
// List<Userdata>? _dataa;    //when the list of object doesn't have name  {[....]}
//
//
// Future<List<Userdata>?> loadJsonData() async {
//   final String jsontext = await rootBundle.loadString("assets/student2.json");
//   final newdata = json.decode(jsontext);
//
//   setState(() {
//     // _dataa = List<Userdata>.fromJson(newdata);
//
//     _dataa = List<Userdata>.from(newdata.map((model)=> Userdata.fromJson(model)));
//
//
//   });
//   // print(_dataa);
// }
