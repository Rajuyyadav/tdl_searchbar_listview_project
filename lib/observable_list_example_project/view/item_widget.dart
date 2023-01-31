import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:searchbar_listview/observable_list_example_project/model/item_model.dart';

class ItemWidgetClass extends StatelessWidget {
  final ItemModelClass? item;
  final VoidCallback? clickedRemoved;                // final Function? clickedRemoved;    this can also work .

  final Function(bool? check)? onChange;
  const ItemWidgetClass({
    Key? key,
    this.item,
    this.clickedRemoved,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => ListTile(
              title: Text("${item?.title}"),
              leading: Checkbox(
                value: item?.check,
                onChanged: onChange,
              ),
              trailing: IconButton(
                  onPressed: () {
                    clickedRemoved?.call();                     // .call is used here so that it can call
                  },
                  icon: const Icon(Icons.remove_circle)),
            ));
  }
}
