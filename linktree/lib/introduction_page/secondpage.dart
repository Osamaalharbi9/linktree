import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [const Color.fromARGB(255, 255, 177, 134),const Color.fromARGB(255, 254, 255, 210)])),
    );
  }
}
