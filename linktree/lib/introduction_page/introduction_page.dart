import 'package:flutter/material.dart';
import 'package:linktree/introduction_page/first_page.dart';
import 'package:linktree/introduction_page/secondpage.dart';
import 'package:linktree/introduction_page/sheet.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Introductionpage extends StatelessWidget {
  Introductionpage({super.key});
  final _controller = PageController();
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              children: const [Firstpage(), Secondpage()],
            ),
            SizedBox.expand(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 2,
                    effect:const ExpandingDotsEffect(
                        activeDotColor: Colors.white,
                        dotWidth: 12,
                        dotHeight: 12),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      color: Colors.black,
                      height: 50,
                      width: 300,
                      child:const Sheet(),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}
