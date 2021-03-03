import 'package:flutter_blogger_app/screens/home.dart';
import 'package:flutter_blogger_app/services/blogger_service.dart';
import 'package:flutter_blogger_app/utils/global_vars.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var blogData = await BloggerApi().getPosts();
  posts = blogData.items;
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
