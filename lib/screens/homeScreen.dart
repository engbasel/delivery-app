import 'package:flutter/material.dart';
import 'package:pro2/screens/screenFour.dart';
import 'package:pro2/screens/screenThree.dart';
import 'package:pro2/screens/screenTwo.dart';
import 'package:pro2/screens/screenone.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  final pagecontroller = PageController();

  // List<Widget> screens = [
  //   screenFour(),
  //   screenOne(),
  // ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pagecontroller,
                children: [
                  screenOne(),
                  ScreenTwo(),
                  ScreenThree(),
                  screenFour(),
                ],
              ),
            ),
            SmoothPageIndicator(
              effect: WormEffect(
                activeDotColor: Colors.orange,
                dotColor: Colors.blueGrey,
              ),
              controller: pagecontroller,
              count: 4,
            ),
            SizedBox(height: 25)
          ],
        ),
      ),
    );
  }
}
