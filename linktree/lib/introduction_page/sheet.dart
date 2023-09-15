import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sheet extends StatefulWidget {
  const Sheet({super.key});

  @override
  State<Sheet> createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 121, 121, 121)),
        onPressed: () {
          _desplayBottomSheet(context);
        },
        child: Text(
          'Get Started!',
          style: GoogleFonts.inter(
              color: Colors.white, fontWeight: FontWeight.w700),
        ));
  }

  Future _desplayBottomSheet(BuildContext context) {
    return showModalBottomSheet(shape:const  RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top:  Radius.circular(40))),
        context: context,
        builder: (context) => Container(
              height: 500,
              child:const Column(children: [],),
            ));
  }
}
