import 'package:flutter/material.dart';
import 'dialogbox1.dart';
import 'dialogbox2.dart';
import 'dialogbox3.dart';
import 'newclass2.dart';

class NewFile extends StatefulWidget {
  const NewFile({Key? key}) : super(key: key);

  @override
  State<NewFile> createState() => _NewFileState();
}

class _NewFileState extends State<NewFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1E1E1E),
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text("My Policies "),
      ),
      body: Center(
          child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => const NewClass2()));
            },
            child: ListTile(
              tileColor: const Color(0xff1E1E1E),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                      "Two wheeler insurance",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: Color.fromRGBO(16, 165, 58, 0.1),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: const Text(
                          "Active",
                          style: TextStyle(color: Color(0xff10A53A)),
                        ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //         backgroundColor: const Color(0xFF3F5044)),
                  //     onPressed: () {},
                  //     child: Text(
                  //       "Active",
                  //       style: TextStyle(
                  //           color: Colors.green.shade500,
                  //           fontSize: 14,
                  //           fontWeight: FontWeight.w400),
                  //     )),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "Name: ",
                      style: TextStyle(
                          color: Color(0xffA2A1A1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                            text: "Rakesh Kumar",
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 14,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
              tileColor: const Color(0xff171717),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (ctx) => const DialogBox2());
                      const DialogBox2();
                    },
                    child: const Text(
                      "Claim",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  TextButton(
                    onPressed: () {
                      // showDialog(
                      //     context: context,
                      //     builder: (ctx) => const DialogBox2());
                      // const DialogBox2();
                    },
                    child: const Text(
                      "Download",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ),


                  ),
                  const Spacer(
                    flex: 5,
                  ),
                  IconButton(
                    //                             more ========
                    onPressed: () {
                      showBottomSheetMethod(); //         bottomsheet class==========================
                    },
                    icon: const Icon(Icons.more_horiz),
                    color: Colors.white,
                  ),
                ],
              )),

          //======================================gradient Colors================
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(

                  colors: [
                    Colors.blue,
                    Colors.blue.shade400,
                    Colors.black,

                  ],
                  radius: 0.7,
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomRight,
                ),
              ),
              child: Center(child: Text("JAI HIND")),
            ),
          )
          //==================================================================================
        ],
      )),
    );
  }

  void showBottomSheetMethod() {
    showModalBottomSheet(
        enableDrag: false,
        backgroundColor: Colors.black,
        context: context,
        builder: (ctx) {
          return Container(
            color: const Color(0xff1E1E1E),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                InkWell(
                  onTap: () {
                    Navigator.pop(context);

                    showDialog(
                        context: context, builder: (ctx) => const DialogBox3());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Cancel",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),



                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    showDialog(
                        context: context,
                        builder: (ctx) {
                          return const DialogBox();
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Change details",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),



              ],
            ),
          );
        });
  }
}
