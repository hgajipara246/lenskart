import 'package:flutter/material.dart';
import 'package:lenskart/four_page_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lenskart screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const PageOne(),
    );
  }
}
