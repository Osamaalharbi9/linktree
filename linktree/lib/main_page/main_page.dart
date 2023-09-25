import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 140,
            ),
            const CircleAvatar(
              foregroundImage: AssetImage('assets/images/vecteezy_default-profile-account-unknown-icon-black-silhouette_20765399.jpg')
                  ,
              radius: 60,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.name1,
              style:
                  GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text('@${widget.username1}'),
          ],
        ),
      ),
    );
  }
}
