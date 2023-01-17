import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SetPinCode extends StatefulWidget {
  const SetPinCode({Key? key}) : super(key: key);

  @override
  State<SetPinCode> createState() => _SetPinCodeState();
}

class _SetPinCodeState extends State<SetPinCode> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width / 10, top: height / 20),
                  child: Row(
                    children: [
                      Container(
                        height: height / 20,
                        width: width / 5,
                        decoration: BoxDecoration(
                          color: const Color(0xFF5064BF),
                          borderRadius: BorderRadius.circular(width / 5),
                        ),
                        child: const Icon(Icons.keyboard_backspace,
                            color: Color(0xFFFFFFFF)),
                      ),
                      SizedBox(width: width / 10),
                      const Text(
                        "Set Pin Code",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height / 15),
                const Text(
                  "Please set your own\n"
                  "Pin Code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFC4C4C4),
                  ),
                ),
                SizedBox(height: height / 20),
                const Text(
                  "Set Pin Code (5-digit)",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFC4C4C4),
                  ),
                ),
                SizedBox(height: height / 20),
                Padding(
                  padding: EdgeInsets.only(left: width / 4, right: width / 4),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "enter your pin",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 5,
                  ),
                ),
                SizedBox(height: height / 5),
                Container(
                  height: height / 12,
                  width: width / 3,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5063BF),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xFF5063BF),
                          blurRadius: height,
                          spreadRadius: 0.1)
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Set",
                      style: TextStyle(
                        color: const Color(0xFFFFFFFF),
                        fontSize: text * 25.28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
