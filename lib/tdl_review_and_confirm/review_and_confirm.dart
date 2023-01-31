import 'package:flutter/material.dart';

class ReviewAndConfirm extends StatefulWidget {
  const ReviewAndConfirm({Key? key}) : super(key: key);

  @override
  State<ReviewAndConfirm> createState() => _ReviewAndConfirmState();
}

class _ReviewAndConfirmState extends State<ReviewAndConfirm> {
  bool _ischeckboxSelected = false;
  bool _issubmitbuttonSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: const [Icon(Icons.add)],
        title: const Text(
          "Review and confirm",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            reviewAndConfirmContainerOne(),
            Container(
              color: const Color(0xffefe8ef),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 28, bottom: 24, left: 16, right: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Insured Personal & Contact Details",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "EDIT",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                  color: Color(0xff8800EC)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          color: const Color(0xffe6e2ea),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Expanded(
                                      child: Text(
                                        "Full Name",
                                        style: TextStyle(
                                          color: Color(0xff5F5E62),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Mr. Renganathan Padmanabham",
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          color: Color(0xff444347),
                                          fontSize: 16,
                                          height: 1.8,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  color: Color(0xff7C757F),
                                  thickness: 1,
                                ),
                                Row(
                                  children: const [
                                    Expanded(
                                      child: Text(
                                        "Email",
                                        style: TextStyle(
                                          color: Color(0xff5F5E62),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        // maxLines: 2,
                                        "renga.padmanabham@tatadigital.com",
                                        textDirection: TextDirection.rtl,

                                        style: TextStyle(
                                          color: Color(0xff444347),
                                          fontSize: 16,
                                          height: 1.8,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  color: Color(0xff7C757F),
                                  thickness: 1,
                                ),
                                Row(
                                  children: const [
                                    Expanded(
                                      child: Text(
                                        "Mobile No.",
                                        style: TextStyle(
                                          color: Color(0xff5F5E62),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "+91 9456789303",
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        color: Color(0xff444347),
                                        fontSize: 16,
                                        height: 1.8,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(
                    thickness: 4,
                    color: Color(0xffADA6A8),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "We have got you covered",
                          style: TextStyle(
                            fontSize: 16,
                            height: 2.4,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color(0xffe1d9db),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: const [
                                    CircleAvatar(
                                      backgroundColor: Colors.pinkAccent,
                                      child: Text(
                                        "100",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Text(
                                      "4500+ Cashless Garages",
                                      style: TextStyle(
                                          fontSize: 16,
                                          height: 1.6,
                                          fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            )),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                                child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color(0xffe1d9db),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    CircleAvatar(
                                      backgroundColor: Colors.pinkAccent,
                                      child: Text(
                                        "100",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Text(
                                      "98% Claim Settlement Ratio",
                                      style: TextStyle(
                                          fontSize: 16,
                                          height: 1.6,
                                          fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 4,
                    color: Color(0xffADA6A8),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: const Color(0xff0d5b18),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          // checkColor: Colors.green,

                          value: _ischeckboxSelected,
                          onChanged: (bool? val) {
                            setState(() {
                              _ischeckboxSelected = val!;
                            });
                          },
                          side: const BorderSide(width: 2),
                        ),
                        const Expanded(
                            child: Text(
                          "I agree to accept "
                          "the Terms & Condition and Privacy policy.",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.6),
                        )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: _issubmitbuttonSelected
                            ? Colors.grey
                            : Colors.purple,
                      ),
                      width: double.infinity,
                      child: Center(
                          child: TextButton(
                        onPressed: () {
                          setState(() {
                            _issubmitbuttonSelected=!_issubmitbuttonSelected;


                          });
                        },
                        child: const Text(
                          "Pay ₹5,540.00 ",
                          style: TextStyle(
                            letterSpacing: 0.7,
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              height: 1.6),
                        ),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget reviewAndConfirmContainerOne() {
    return Container(
      color: Colors.black,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Review and Confirm",
              style: TextStyle(
                  color: Colors.white,
                  height: 2,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            const Text(
              "Next Step: Payment",
              style: TextStyle(
                  color: Color(0xffACAAAF),
                  height: 1.5,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            // const Divider(
            //   color: Colors.tealAccent,
            //   height: 5,
            //   thickness: 3,
            //   endIndent: 50,
            // ),

            const LinearProgressIndicator(
              value: 0.75,
              color: Colors.tealAccent,
              backgroundColor: Color(0xff4A454D),
            ),

            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xffE2EEF8),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/img.png"),
                      ),
                      title: Text(
                        "Tata AIG",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text("Two wheeler plan"),
                      trailing: Text(
                        "EDIT",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            color: Color(0xff8800EC)),
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          "₹5,540",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "18% GST included",
                          style: TextStyle(
                            color: Color(0xff5F5E62),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.info_outline,
                          color: Color(0xff2A2A2D),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Coverage Amount",
                                  style: TextStyle(
                                    color: Color(0xff5F5E62),
                                    fontSize: 12,
                                    height: 1.6,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "₹1 Lakh",
                                  style: TextStyle(
                                    color: Color(0xff2A2A2D),
                                    fontSize: 12,
                                    height: 1.6,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            thickness: 1,
                            color: Color(0xff7C757F),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Validity",
                                  style: TextStyle(
                                    color: Color(0xff5F5E62),
                                    fontSize: 12,
                                    height: 1.6,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "3 years",
                                  style: TextStyle(
                                    color: Color(0xff2A2A2D),
                                    fontSize: 12,
                                    height: 1.6,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            thickness: 1,
                            color: Color(0xff7C757F),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Plan Type",
                                  style: TextStyle(
                                    color: Color(0xff5F5E62),
                                    fontSize: 12,
                                    height: 1.6,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "Comprehensive",
                                  style: TextStyle(
                                    color: Color(0xff2A2A2D),
                                    fontSize: 12,
                                    height: 1.6,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
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
