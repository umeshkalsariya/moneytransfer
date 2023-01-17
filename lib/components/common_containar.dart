import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 160,
      decoration: BoxDecoration(
        color: const Color(0xFF5063BF),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF5063BF),
            blurRadius: 10,
            spreadRadius: 0.1,
          ),
        ],
      ),
      child: const Center(
        child: Text(
          "Sign Up",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
