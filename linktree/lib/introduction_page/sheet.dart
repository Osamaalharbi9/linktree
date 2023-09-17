import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sheet extends StatefulWidget {
  const Sheet({super.key});

  @override
  State<Sheet> createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  TextEditingController name = TextEditingController();
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
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
        context: context,
        builder: (context) => SizedBox(
              height: 500,
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Sign up',
                    style: GoogleFonts.inter(
                        fontSize: 25,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                        controller: name,
                        decoration: InputDecoration(
                          suffixIcon: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(
                                  Icons.person,
                                ),
                              ),
                              Text('Enter your name ')
                            ],
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 215, 215, 215),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                        controller: name,
                        decoration: InputDecoration(
                          suffixIcon: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(
                                  Icons.password_rounded,
                                ),
                              ),
                              Text('Enter your Password ')
                            ],
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 215, 215, 215),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                  ),
                ],
              ),
            ));
  }
}
