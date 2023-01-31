import 'dart:io';
import 'dart:async';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class CarouselPageOne extends StatefulWidget {
  const CarouselPageOne({Key? key}) : super(key: key);

  @override
  State<CarouselPageOne> createState() => _CarouselPageOneState();
}

class _CarouselPageOneState extends State<CarouselPageOne> {
  int pageIndex = 0;

  final List<Widget> _listofimage = [
    Container(
      height: 100,
      color: Colors.red,
    ),
    Container(
      height: 100,
      color: Colors.black,
    ),
    Container(
      height: 100,
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text("Hello Hello22"),
            Container(
              height: 100,
              color: Colors.yellow,
              child: PageView(
                children: _listofimage,
                onPageChanged: (index) {
                  pageIndex = index;
                  setState(() {});
                },
              ),
            ),
            CarouselIndicator(
              height: 10,
              activeColor: Colors.black,
              color: Colors.pink,
              width: 10,
              count: _listofimage.length,
              index: pageIndex,
            ),
            TextButton(
                onPressed: () {
                  pickfilemethod();
                },
                child: const Text(
                  "selectfile",
                  style: TextStyle(color: Colors.black),
                )),
            Text("result:${openResult}"),
          ],
        ),
      ),
    );
  }

  var openResult;

  void pickfilemethod() async {
    PlatformFile? file;


    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      file = (result.files.single);
      openFile(file);
      // final _result = await OpenFile.open(file.path.toString()); // convert it to toString because we used the file type as PlatformFile.
      // print("++++++++++++${_result.message}");
      print("++++++++++++${file.name}");
      print("++++++++++++${file.extension}");
      print("++++++++++++${file.size}");
      print("++++++++++++${file.path}");

      final newFile = await saveFilePermanentlyMethod(file);

      print("++++++++++++${file.path!}");
      print("++++++++++++${newFile.path}");

      // setState(() {openresult = "type:${_result.type} message:${_result.message}";});
    } else {
      print("nothing to print");
      return;
    }
  }

  Future saveFilePermanentlyMethod(PlatformFile? file) async {
    var appStorage = await getApplicationDocumentsDirectory();
    final newFile = File(appStorage.path!);
    return newFile;
  }


  void openFile(PlatformFile? file) {
    OpenFile.open(file?.path);
  }
}
