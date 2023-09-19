import 'package:flutter/material.dart';


class Mainpage extends StatefulWidget {
   Mainpage({super.key,required this.name1});
   var name1;
  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text(widget.name1),);
  }
}