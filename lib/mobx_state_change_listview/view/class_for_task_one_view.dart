import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../controller/controller_for_json_api_class.dart';
import '../model/model_class_for_apicall.dart';

class TaskForApiCall extends StatefulWidget {
  const TaskForApiCall({Key? key}) : super(key: key);

  @override
  State<TaskForApiCall> createState() => _TaskForApiCallState();
}

class _TaskForApiCallState extends State<TaskForApiCall> {
  @override
  void initState() {
    userobject?.fetchAlbum();
    super.initState();
    // readjsondata();
  }


  ControllerJsonApiClass? userobject = ControllerJsonApiClass();

//   //                                    =======================================================1
//   List<UserModel>? modelData;
// // how to debug an application,     how to add breakpointr in an application
//
//
//
//   Future<List<UserModel>?> fetchAlbum() async {
//     final response =
//         await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
//     final decodeddata = jsonDecode(response.body);
//     if (response.statusCode == 200) {
//       print(response.statusCode);
//       modelData = List<UserModel>.from(decodeddata.map((e) => UserModel.fromJson(e)));
//       setState(() {});
// // modelData = UserModel.fromJson(decodeddata.map);   //                ======for object
//
//       // final List<UserModel> _data = List<UserModel>.from(
//       //     decodeddata.map((model) => UserModel.fromJson(model)));    //        ======for List object
//       // return _data;
//       return null;
//     }
//     print("modelData   ++++++++++++++====      ${modelData}");
//
//     return null;
//   }
// //===============================================================2
//   @override
//   //     //List<UserModel>? _data;
//   UserModelMain? _data;
//   bool istrue = false;
//   Future<UserModelMain?> readjsondata() async {
//     final String jsondata = await rootBundle
//         .loadString("assets/internal_data_file/jsondatainternalfile.json");
//     final decodedataset = json
//         .decode(jsondata); //here jsondata is string and decodedataset is map
//
//     setState(() {
//       // _data =   List<UserModel>.from(decodedataset.map((e) => UserModel.fromJson(e)));
//       _data = UserModelMain.fromJson(decodedataset);
//
//       // decodedataset.map((e) => UserModel.fromJson(e)).toList();
//       // istrue = true;
//     });
//     print(_data);
//
//     return null;
//   }
//   @override
  Widget build(BuildContext context) {
    // final controllerStore = Provider.of<ControllerJsonApiClass>(context);
    // print(" future value :: ${_data?.data?[0].name}");
    // print(" future value 2 ::: ${userobject?.fetchAlbum()}");

    return Scaffold(
      appBar: AppBar(
        actions: [
          // TextButton(onPressed: ()=>loadJsonData, child: Text("1",style: TextStyle(color: Colors.white),)),
          TextButton(
              onPressed: () {
                userobject?.fetchAlbum();
                // setState(() {
                //   // modelData;
                //   // fetchAlbum();
                // });
              },
              child: const Text(
                "run",
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
      body: Center(
        child: Observer(

          builder: (context) => ListView.builder(
            itemCount: userobject?.data.length,
            itemBuilder: (ctx,index)=>ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: CircleAvatar(child: Text("${userobject?.data?[index].id}"),),

              title: Text(userobject?.data?[index].company.toString() ?? "NA"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(userobject?.data?[index].name.toString() ?? "NA"),

                   Text("${userobject?.data?[index].email}"),

                  const Divider(
                    thickness: 1.5,
                  ),
                ],
              ),
              trailing: IconButton(onPressed: (){return userobject?.removecontent(index);},
                  icon: Icon(Icons.delete),color: Colors.grey),

            ),
          ),
        ),
        // child: Observer(
        //   builder: (_) => ListView.builder(
        //     itemCount: 5,
        //     itemBuilder: (ctx, index) {
        //       return Column(
        //         children: [
        //           // FutureBuilder(
        //           //     future: fetc,
        //           //     builder: (ctx,snapshot){
        //           //
        //           //   if(snapshot.hasData){
        //           //     return Text(snapshot.data!.name.toString());
        //           //   }else if(snapshot.hasError){
        //           //     return Text("${snapshot.hasError}");
        //           //
        //           //   }else{
        //           //     return const CircularProgressIndicator();
        //           //   }
        //           //
        //           // }),
        //
        //           // ElevatedButton(
        //           //     onPressed: () {
        //           //
        //           //     },
        //           //     child: const Text("press")),
        //
        //           ListTile(
        //             contentPadding: EdgeInsets.all(10),
        //             leading: CircleAvatar(),
        //             title: Text("${_data?.users[0].name}"),
        //             subtitle: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: const [
        //                 Text("subtitle data"),
        //                 Text("subtitle code number"),
        //                 Divider(
        //                   thickness: 1.5,
        //                 )
        //               ],
        //             ),
        //           ),
        //         ],
        //       );
        //     },
        //   ),
        // ),
      ),
    );
  }
}

// final List<UserModel> _data = List<UserModel>.from(
//           decodeddata.map((model) => UserModel.fromJson(model)));
