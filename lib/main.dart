import 'package:dars2/views/screens/problem_1.dart';
import 'package:dars2/views/screens/problem_2.dart';
import 'package:dars2/views/screens/home_page.dart';
import 'package:dars2/views/screens/problem_3.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ListScreen(),
      home: ComputationScreen(),
      // home: ImageScreen(),
    );
  }
}
