import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linktree/main_page/main_page.dart';

class Sheet extends StatefulWidget {
  const Sheet({super.key});

  @override
  State<Sheet> createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  String name='';
  String username='';
  TextEditingController inputname = TextEditingController();
  TextEditingController inputusername = TextEditingController();

  //final nam1=name.text;
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
              height: 400,
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
                        controller: inputname,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          hintText: 'Enter your name',
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
                        controller: inputusername,
                        decoration: InputDecoration(
                          hintText: 'Enter your username',
                          prefixIcon: const Icon(Icons.password),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 215, 215, 215),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.black,
                      height: 50,
                      width: 350,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              foregroundColor:
                                  const Color.fromARGB(255, 121, 121, 121)),
                          onPressed: () {username=inputusername.text;
                             name= inputname.text;
                            if(username==''&&name==''){}
                          else{Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  Mainpage(name1: name,username1: username,)));}
                            
                             
                            
                          
                            },
                          child: Text(
                            'Sign in',
                            style: GoogleFonts.inter(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ),
                
                ],
              ),
            ));
  }
}
