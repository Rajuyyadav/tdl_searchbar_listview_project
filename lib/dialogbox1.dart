import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      insetPadding: const EdgeInsets.all(16),
      backgroundColor: const Color(0xff1E1E1E),
      icon: const Icon(
        Icons.ac_unit,
        color: Colors.white,
      ),
      title: const Text(
        "Change details",
        style: TextStyle(
          color: Color(0xffA1A1A1),
          fontSize: 18,
        ),
      ),
      content: const Text(
        "To change your details "
        "call us on 1-860-266-9966 or write to "
        "endorsements@tataaia.com",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
      actions: [
        Center(
          child: InkWell(
            onTap: (){
              Navigator.pop(context);

            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding:  EdgeInsets.fromLTRB(55, 10, 55, 10),
                child:  Text(
                  "Close",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
