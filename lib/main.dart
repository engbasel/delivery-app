import 'package:flutter/material.dart';
import 'package:pro2/screens/homeScreen.dart';

void main(List<String> args) {
  runApp(Deleviryapp());
}

class Deleviryapp extends StatelessWidget {
  const Deleviryapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
