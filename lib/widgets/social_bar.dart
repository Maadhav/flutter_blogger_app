import 'package:flutter_blogger_app/data/models.dart';
import 'package:flutter/material.dart';

class SocialBar extends StatelessWidget {
  final Item post;

  const SocialBar({Key key, this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Row(
        children: [
          Icon(
            Icons.thumb_up,
            color: Color(0xffC8C8C8),
            size: 18,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            '12',
            style: TextStyle(color: Color(0xffA2A2A2), fontSize: 18),
          ),
          SizedBox(
            width: 24,
          ),
          Icon(
            Icons.comment_rounded,
            color: Color(0xffC8C8C8),
            size: 18,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            post.replies.totalItems,
            style: TextStyle(color: Color(0xffA2A2A2), fontSize: 18),
          ),
          Expanded(child: SizedBox()),
          Icon(
            Icons.share,
            color: Color(0xffC8C8C8),
            size: 18,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            'Share',
            style: TextStyle(color: Color(0xffA2A2A2), fontSize: 18),
          ),
        ],
      ),
    );
  }
}
