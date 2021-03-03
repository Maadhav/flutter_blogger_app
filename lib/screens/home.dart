import 'package:flutter_blogger_app/screens/post.dart';
import 'package:flutter_blogger_app/services/html_extract_service.dart';
import 'package:flutter_blogger_app/utils/global_vars.dart';
import 'package:flutter_blogger_app/widgets/index.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.builder(
          itemCount: posts.length,
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (context, index) => InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Post(
                  post: posts[index],
                ),
              ),
            ),
            child: Column(
              children: [
                Hero(
                  tag: 'header${posts[index].id}',
                  child: Header(
                    post: posts[index],
                  ),
                ),
                Hero(
                  tag: 'thumbnail${posts[index].id}',
                  child: Thumbnail(
                    imageUrl: HtmlService().extractImage(posts[index].content),
                  ),
                ),
                Description(
                  content: HtmlService().extractText(posts[index].content),
                ),
                Hero(
                  tag: 'social${posts[index].id}',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: SocialBar(
                      post: posts[index],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
