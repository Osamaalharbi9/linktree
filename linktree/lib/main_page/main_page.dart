import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key, required this.name1, required this.username1});
  final String name1;
  final String username1;
  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text(widget.name1),
          Text(widget.username1),
        ],
      ),
    );
  }
}
