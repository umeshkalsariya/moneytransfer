import 'package:flutter/material.dart';

class Oneboarding extends StatefulWidget {
  const Oneboarding({Key? key}) : super(key: key);

  @override
  State<Oneboarding> createState() => _OneboardingState();
}

class _OneboardingState extends State<Oneboarding> {
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/loadingone.png"),
                Text(
                  "Easy, Fast & Trusted",
                  style: TextStyle(
                      fontSize: text * 38, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: height / 28, top: height / 28),
                  child: Text(
                      "Fast money transfer and gauranteed safe \ntransactions with others.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade600)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: height / 22),
                  child: Image.asset("assets/images/Slider.png"),
                ),
                Container(
                  height: height / 12,
                  width: width / 2,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5063BF),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xB25063BF),
                          blurRadius: 20,
                          spreadRadius: 1)
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
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
