import 'package:flutter/material.dart';
import 'package:counter/home_page.dart';
class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:homePage() ,
    );
  }
}
