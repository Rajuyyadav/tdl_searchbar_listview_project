import 'package:flutter/material.dart';

class TdlAlertBox extends StatefulWidget {
  const TdlAlertBox({Key? key}) : super(key: key);

  @override
  State<TdlAlertBox> createState() => _TdlAlertBoxState();
}

class _TdlAlertBoxState extends State<TdlAlertBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const AlertDialogBox();
                });
          },
          child: const Text("click"),
        ),
      ),
    );
  }
}

class AlertDialogBox extends StatefulWidget {
  const AlertDialogBox({Key? key}) : super(key: key);

  @override
  State<AlertDialogBox> createState() => _AlertDialogBoxState();
}

class _AlertDialogBoxState extends State<AlertDialogBox> {
  bool isselected = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      icon: const Icon(Icons.info_outline, size: 30),
      iconColor: const Color(0xff7F5700),
      // contentPadding: EdgeInsets.only(bottom: 20),
      title: const Text("Mandatory Regulation!"),
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform.scale(
            scale: 1.5,
            child: Padding(
                padding: const EdgeInsets.only(top: 2, right: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isselected = !isselected;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color:
                            isselected ? const Color(0xff278a5e) : Colors.white,
                        border: Border.all(
                          width: 1,
                          color: isselected
                              ? const Color(0xff207955)
                              : Colors.black,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4))),
                    height: 15,
                    width: 15,
                    child: const Icon(
                      Icons.check,
                      size: 10,
                      color: Colors.white,
                    ),
                  ),
                )),
          ),
          const Expanded(
              child: Text(
            "By clicking to “Proceed”,"
            " I do hereby declare that I have an existing "
            "PA cover of ₹15 Lakh which is valid for atleast "
            "1 year duration",
            style: TextStyle(
              fontSize: 14.5,
              height: 1.4,
              fontWeight: FontWeight.w400,
            ),
          )),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "ADD PA-COVER",
                style: TextStyle(
                    color: Colors.purple,
                    letterSpacing: 2,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.2),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: isselected ? Colors.purple : Colors.grey,
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: TextButton(
                        onPressed: () {
                          if (isselected) {
                            Navigator.pop(context);
                          }
                        },
                        child: const Text(
                          "PROCEED",
                          style:
                              TextStyle(color: Colors.white, letterSpacing: 2),
                        )),
                  )),
            ],
          ),
        ),
        // const SizedBox(height: 20,),
      ],
    );
  }
}
