import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Comp 2_10.png',
                    height: 100,
                    width: 100,
                  ),
                ],
              ),const SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 360,
                      width: 400,
                      child: Image.asset(
                        'assets/images/profile_card1.png',
                        fit: BoxFit.fitHeight,
                      )),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Pathway ',
                    style: GoogleFonts.inter(
                        fontSize: 40,
                        color: const Color.fromARGB(
                          255,
                          86,
                          54,
                          105,
                        ),
                        fontWeight: FontWeight.w500),
                  ),
                ],
                
              ),Row(mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Text(
                    'to grow ',
                    style: GoogleFonts.inter(
                        fontSize: 40,
                        color: const Color.fromARGB(
                          255,
                          86,
                          54,
                          105,
                        ),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),const SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      color: Colors.black,
                      height: 60,
                      width: 300,
                      child: OutlinedButton(style: OutlinedButton.styleFrom(foregroundColor: Color.fromARGB(255, 121, 121, 121)),
                          onPressed: () {},
                          child: Text(
                            'Get Started!',
                            style: GoogleFonts.inter(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
