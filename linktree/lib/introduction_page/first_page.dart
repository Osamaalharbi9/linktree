import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Comp 2_10.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
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
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your Pathway ',
                            style: GoogleFonts.inter(
                                fontSize: 30,
                                color: const Color.fromARGB(
                                  255,
                                  86,
                                  54,
                                  105,
                                ),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'to grow ',
                            style: GoogleFonts.inter(
                                fontSize: 30,
                                color: const Color.fromARGB(
                                  255,
                                  86,
                                  54,
                                  105,
                                ),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 90,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [],
                      )
                    ],
                  ),
                );
  }
}