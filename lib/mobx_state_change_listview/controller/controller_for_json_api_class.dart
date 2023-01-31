import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import '../model/model_class_for_apicall.dart';
part 'controller_for_json_api_class.g.dart';

class ControllerJsonApiClass = _ControllerJsonApiClass
    with _$ControllerJsonApiClass;

abstract class _ControllerJsonApiClass with Store {
  // _ControllerJsonApiClass() {
  //   fetchAlbum();
  // }
/*
 Clientdataclass? _data;

  Future<Clientdataclass?> loadjsondata() async{
    final String data = await rootBundle.loadString("assets/clientdatafile.json");
    final decodeddata = json.decode(data);
    setState(() {
      _data=Clientdataclass.fromJson(decodeddata);
    });
    print(_data?.feature_clients?.clients?[0].age?.toInt());        // here we can use the toString()       ,toInt()  , tro double() like methods
    return null;
  }
*/
  @observable
   ObservableList<UserModel> data = ObservableList(); // do not add final modifier

  @action
  Future<List<UserModel>?> fetchAlbum() async {
    final response = (await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users")));
    // final decodeddata=jsonDecode(response);
    if (response.statusCode == 200) {
      var decodeddata = json.decode(response.body);
      // data = (decodeddata as List).map((e) => UserModel.fromJson(e)).toList();
      // data.clear();
      data.clear();

      data.addAll(
          List<UserModel>.from(decodeddata.map((e) => UserModel.fromJson(e))));
      return data;
      // if (response.statusCode == 200) {
      //   var res = json.decode(response.body) as List;
      //
      //   for (var element in res) {
      //     listOfItems user = listOfItems.fromJson(element);
      //     print('user created. ${user.id}');
      //     listOfItems.add(user);
      //   }
      // } else {
      //   throw Exception("failed to load album");
      // }
    }
  }


  @action
  void removecontent(int index){
    data.removeAt(index);


  }
}
