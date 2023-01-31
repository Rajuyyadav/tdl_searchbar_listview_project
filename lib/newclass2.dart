import 'package:flutter/material.dart';

import 'dialogbox2.dart';

class NewClass2 extends StatefulWidget {
  const NewClass2({Key? key}) : super(key: key);

  @override
  State<NewClass2> createState() => _NewClass2State();
}

class _NewClass2State extends State<NewClass2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1E1E1E),
        title: const Text("Policy Details"),
        actions: const [Icon(Icons.highlight_remove_outlined)],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: const Color(0xff171717),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Two wheeler insurance",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "Full Name",
                      style: TextStyle(
                          color: Color(0xffA1A1A1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      "Renga Padmanabham",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Policy number",
                              style: TextStyle(
                                  color: Color(0xffA1A1A1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 4,
                            ),

                            Text(

                              "01234567810",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),

                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Started on",
                              style: TextStyle(
                                  color: Color(0xffA1A1A1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "10th March 2022",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Insured declared value",
                              style: TextStyle(
                                  color: Color(0xffA1A1A1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "₹ 50,00,000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Expiring on",
                              style: TextStyle(
                                  color: Color(0xffA1A1A1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "10th March 2023",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: const Color(0xff0B0C0F),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Inclusions",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Exclusions",
                          style: TextStyle(
                              color: Color(0xffA1A1A1),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "FAQs",
                          style: TextStyle(
                              color: Color(0xffA1A1A1),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "Coverage summary",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color(0xff929094),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (ctx) {
                                  return  const DialogBox2();
                                });

                            // Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DialogBox()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff0B0C0F),
                                borderRadius: BorderRadius.circular(25),
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(55, 10, 55, 10),
                              child: Text(
                                "Claim",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                         ),

                        TextButton(
                          onPressed: () {},
                          child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff0B0C0F),
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text(
                                  "Download",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              )),
                        ),
                      ],
                    ),



                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
