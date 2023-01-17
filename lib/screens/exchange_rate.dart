import 'package:flutter/material.dart';

class ExchangeRate extends StatefulWidget {
  const ExchangeRate({Key? key}) : super(key: key);

  @override
  State<ExchangeRate> createState() => _ExchangeRateState();
}

class _ExchangeRateState extends State<ExchangeRate> {
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
        // backgroundColor: Color(0xFF878887),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: width / 12, top: height / 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                      "Exchange Rate",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 20,
                ),
                Text(
                  "USD to PKR",
                  style: TextStyle(
                      fontSize: text * 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height / 100,
                ),
                const Text(
                  "\$1 = Rs. 189.12",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: height / 50,
                ),
                Text(
                  "\$35201.63",
                  style: TextStyle(
                      fontSize: text * 32,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF5163BF)),
                ),
                SizedBox(
                  height: height / 25,
                ),
                Row(
                  children: [
                    Image.asset("assets/images/calendar.png"),
                    SizedBox(
                      width: width / 25,
                    ),
                    const Text("09 - 13 May"),
                  ],
                ),
                SizedBox(
                  height: height / 25,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: width / 12,
                  ),
                  child: Container(
                    height: height / 2.5,
                    // width: width / 0.8,
                    decoration: BoxDecoration(
                      // color: Colors.,
                      borderRadius: BorderRadius.all(
                        Radius.circular(height / 25),
                      ),
                    ),
                    child: Image.asset("assets/images/Groupone.png"),
                  ),
                ),
                SizedBox(height: height / 20),
                Padding(
                  padding: EdgeInsets.only(right: width / 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("14:00"),
                      Text("15:00"),
                      Text("16:00"),
                      Text("17:00"),
                      Text("18:00"),
                      Text("19:00"),
                    ],
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
