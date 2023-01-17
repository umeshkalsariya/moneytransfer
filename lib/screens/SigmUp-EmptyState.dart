import 'package:flutter/material.dart';
import 'package:moneytransfer/components/common_containar.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  dynamic obscureText = true;
  dynamic obscureword = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 25, vertical: height / 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/Group.png"),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.01),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: text * 35, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 30),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Mainideas@gmail.com",
                    hintStyle: TextStyle(color: Colors.black26, height: 2),
                    labelText: "Email Address",
                    // border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.black38),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.1 / 3),
                  child: TextField(
                    decoration: InputDecoration(
                      // hintText: "Mainideas@gmail.com",
                      // hintStyle: TextStyle(color: Colors.black26, height: 2),
                      labelText: "Password",
                      // border: OutlineInputBorder(),
                      labelStyle: const TextStyle(color: Colors.black38, height: 1),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: obscureText
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                  size: 15,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  color: Color(0xFF5063BF),
                                  size: 15,
                                )),
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: obscureText,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.1 / 3),
                  child: TextField(
                    decoration: InputDecoration(
                      // hintText: "Mainideas@gmail.com",
                      // hintStyle: TextStyle(color: Colors.black26, height: 2),
                      labelText: "Confirm Password",
                      // border: OutlineInputBorder(),
                      labelStyle: const TextStyle(color: Colors.black38, height: 1),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureword = !obscureword;
                            });
                          },
                          child: obscureword
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                  size: 15,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  color: Color(0xFF5063BF),
                                  size: 15,
                                )),
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: obscureword,
                  ),
                ),
                SizedBox(height: height / 10),
                const Center(
                  child: CommonContainer(),
                ),
                // Center(
                //     // child: Container(
                //     //   height: height / 12,
                //     //   width: width / 2.2,
                //     //   decoration: BoxDecoration(
                //     //     color: const Color(0xFF5063BF),
                //     //     borderRadius: BorderRadius.circular(20),
                //     //     boxShadow: [
                //     //       BoxShadow(
                //     //           color: const Color(0xFF5063BF),
                //     //           blurRadius: height,
                //     //           spreadRadius: 0.1)
                //     //     ],
                //     //   ),
                //     //   child: Center(
                //     //     child: Text(
                //     //       "Sign Up",
                //     //       style: TextStyle(
                //     //         color: const Color(0xFFFFFFFF),
                //     //         fontSize: text * 25.28,
                //     //         fontWeight: FontWeight.bold,
                //     //       ),
                //     //     ),
                //     //   ),
                //     // ),
                //     ),
                SizedBox(height: height / 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Line.png"),
                    Padding(
                      padding: EdgeInsets.only(left: width / 20, right: width / 20),
                      child: const Text(
                        "or",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Image.asset("assets/images/Line.png"),
                  ],
                ),
                SizedBox(height: height / 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/google.png"),
                    SizedBox(width: width / 10),
                    Image.asset("assets/images/facebook.png"),
                  ],
                ),
                SizedBox(height: height / 15),
                const Center(
                  child: Text("Already have an account? Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
