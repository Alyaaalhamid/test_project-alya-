import 'package:flutter/material.dart';
import 'package:test_projectalya/homepage/slide1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: TambahData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
