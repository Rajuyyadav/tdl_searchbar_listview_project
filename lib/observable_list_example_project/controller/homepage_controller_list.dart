import 'package:mobx/mobx.dart';
import 'package:searchbar_listview/observable_list_example_project/model/item_model.dart';

part 'homepage_controller_list.g.dart';

class HomepageControllerList = _HomepageControllerList
    with _$HomepageControllerList;

abstract class _HomepageControllerList with Store {
  ObservableList<ItemModelClass> listItems = const [
    ItemModelClass(title: "title", check: true),
    ItemModelClass(title: "title", check: false),
    ItemModelClass(title: "title", check: false),
    ItemModelClass(title: "title", check: false),
    ItemModelClass(title: "k,m", check: false),
  ].asObservable();

  // ObservableList<User> users = [].asObservable();

  @computed
  int get totalChecked => listItems.where((e) => e.check).length;


  @action
  addItem(ItemModelClass modelData) {
    // users = [].asObservable();
    print(modelData.title);
    listItems.add(modelData);
    print(listItems.last.title);

  }

  @action
  updateCheck(int index, bool? checkValue) {
   listItems[index] = listItems[index].copyWith(
     check: checkValue,
   );

  }

  @action
  removeItem(int index) {
    listItems.removeAt(index);


     // listItems=List.from(listItems..remove(modelData));
  }


}
