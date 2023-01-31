// import 'dart:convert';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'mobx_state_change_listview/model/model_class_for_apicall.dart';

class ApiField extends StatefulWidget {
  const ApiField({Key? key}) : super(key: key);
  @override
  State<ApiField> createState() => _ApiFieldState();
}

class _ApiFieldState extends State<ApiField> {
   Future<UserModel>? futureRun;

  var data;
  List postlist = [];
  // String get abc => abc;
  @override
  void initState() {
    super.initState();
run();
  }

  Future<UserModel?> run() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);

    print('Response status:${response.statusCode}');

    // print('Response status:${response.body}');

    data = jsonDecode(response.body) as List;

    print("data==${data.length}");
    // for (var index = 0; index < data.length; index++) {
    //   postlist.add(data[index]['name']); }
    postlist.clear();
  postlist.addAll(data);


print("postlist data==${postlist.length}");

    setState(() {
      print(" Hello ++++++++++${postlist.length}");
      print(" data ++++++++++${data.length}");

    });
    // return  UserModel.fromJson(jsonDecode(response.body));
return null;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Api Call TaskNo1 '),
        actions: [
          IconButton(
              onPressed: () {
                run();

                print(postlist.length);
              },
              icon: Icon(Icons.send)),
        ],
      ),
      body: data != null
          ? Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView.separated(
                  itemCount: postlist.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                        thickness: 2,
                        color: Colors.red,
                      ),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink,
                        child: Text(data[index]['id'].toString()),
                      ),
                      title: Text(data[index]['name'].toString()),
                      subtitle: Text(data[index]['email']),
                    );
                  }),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
