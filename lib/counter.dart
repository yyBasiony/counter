import 'package:flutter/material.dart';
import 'package:counter/home_page.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home_Page() ,
    );
  }
}
