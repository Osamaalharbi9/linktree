import 'package:flutter/material.dart';

class Introductionpage extends StatelessWidget {
  const Introductionpage({super.key});
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 229, 175, 255),
                Color.fromARGB(255, 206, 191, 218),
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Comp 2_10.png',
                height: 200,
                width: 200,
              ),
              Image.asset('assets/images/profile_card.png'),
              const Text('Your Pathway to grow'),
              ElevatedButton(
                  onPressed: () {}, child: const Text('Get Started!'))
            ],
          ),
        ),
      ),
    );
  }
}
