import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchbar_listview/manual_flow_file/view/select_city_or_rto.dart';
import 'bike_purchase_year.dart';
import 'cities.dart';
import 'help_us with_your_bike_name.dart';

class CallMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => ManualFlowScreenHomepage()));
          },
          child: Text("enter"),
        ),
      ),
    );
  }
}

class ManualFlowScreenHomepage extends StatefulWidget {
  const ManualFlowScreenHomepage({Key? key}) : super(key: key);

  @override
  State<ManualFlowScreenHomepage> createState() =>
      _ManualFlowScreenHomepageState();
}

class _ManualFlowScreenHomepageState extends State<ManualFlowScreenHomepage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();

  var newClassObj = const Newclassfornewlist(); //==========================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.pink,
        elevation: 0,
        backgroundColor: Colors.white,
        // shadowColor: Colors.grey,
      ),
      body: Form(
        child: Center(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  "Don't know your bike number?",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600, height: 2.8),
                ),
                const SizedBox(
                  height: 10,
                ),

                //           ========================                      formfield one
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        context: context,
                        builder: (builder) {
                          return Container(
                              height: MediaQuery.of(context).size.height * 0.65,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
                              ),
                              child: const Newclassfornewlist());
                        });
                  },
                  child: TextFormField(
                    // onChanged: (value) {                           // 1================================================
                    //   setState(() {
                    //     // value = newClassObj();
                    //     // print('SLECTED SOME BIKE');
                    //   });
                    // },
                    controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      labelText: "Help us with your bike name",
                      hintText: "h",
                      suffixIcon: Icon(Icons.search),
                      enabled: false,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //           ========================formfield two
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        context: context,
                        builder: (builder) {
                          return Container(
                              height: MediaQuery.of(context).size.height * 0.65,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
                              ),
                              child: const Newclassfornewlist2());
                        });
                  },
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      labelText: "Bike purchase year",
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                      enabled: false,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //           ========================formfield three
                InkWell(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true).push(
                        CupertinoPageRoute(
                            fullscreenDialog: true,
                            builder: (ctx) => Cities()));
                  },
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      labelText: "Select city or RTO",
                      suffixIcon: Icon(Icons.search),
                      enabled: false,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                //                   ==================== continue button

                const Text(
                  "Has your previous policy expired more than 90 days ago?",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400, height: 1.4),
                ),

                const Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),

                Column(
                  children: [
                    const Divider(
                      thickness: 1.0,
                    ),
                    const Text(
                      "Privacy Policy",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5))),

                      width: double
                          .infinity, // or     MediaQuery.of(context).size.width
                      child: TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "CONTINUE",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
