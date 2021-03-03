import 'package:flutter_blogger_app/data/models.dart';
import 'package:flutter_blogger_app/services/html_extract_service.dart';
import 'package:flutter_blogger_app/widgets/index.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final Item post;

  const Post({Key key, this.post}) : super(key: key);
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 70,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Hero(
              tag: 'header${widget.post.id}',
              child: Header(
                post: widget.post,
              ),
            ),
            Hero(
              tag: 'thumbnail${widget.post.id}',
              child: Thumbnail(
                imageUrl: HtmlService().extractImage(widget.post.content),
              ),
            ),
            Hero(
              tag: 'social${widget.post.id}',
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SocialBar(
                  post: widget.post,
                ),
              ),
            ),
            DropCapText(
              HtmlService().extractText(widget.post.content),
              style: TextStyle(
                color: Color(0xff4F4F4F),
                fontSize: 16,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
              forceNoDescent: true,
            )
          ],
        ),
      ),
    );
  }
}
