import 'package:flutter/material.dart';
import 'package:homework/home_page.dart';
import 'package:homework/test_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
    home: TestPage(),
    );
  }
}
