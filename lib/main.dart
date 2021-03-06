import 'package:flutter_blogger_app/screens/home.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Blogger',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
