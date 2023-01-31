import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:searchbar_listview/observable_list_example_project/model/item_model.dart';

import '../controller/homepage_controller_list.dart';
import 'item_widget.dart';

class HomePageOne extends StatelessWidget {
  HomePageOne({Key? key}) : super(key: key);

  final controller = HomepageControllerList();
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Observer(
                builder: (_) => Text(
                      "${controller.totalChecked}",
                      style: const TextStyle(color: Colors.white)
                          .copyWith(color: Colors.yellow),
                    )),
          ),
        ],
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
              itemCount: controller.listItems.length,
              itemBuilder: (context, index) {
                var item = controller.listItems[index];

                return ItemWidgetClass(
                    item: item,
                    onChange: (bool? check) {
                      controller.updateCheck(index, check);
                    },
                    clickedRemoved: () {
                      controller.removeItem(index);
                    });
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _dialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  _dialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text("AlertDialogBox"),
          content: TextField(
            controller: _controller,
            decoration: const InputDecoration(
                labelText: "text",
                hintText: "hint text",
                border: OutlineInputBorder()),
          ),
          elevation: 2,
          actions: [
            ElevatedButton(
                onPressed: () {
                  final model = ItemModelClass(title: _controller.text);
                  controller.addItem(model);
                  Navigator.pop(context);
                },
                child: const Text("save")),
            ElevatedButton(
                onPressed: () {
                  // controller.removeItem(modelData);
                  Navigator.pop(context);
                },
                child: const Text("cancel")),
          ],
        );
      },
    );
  }
}
