import 'package:flutter_blogger_app/data/models.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Item post;

  const Header({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            post.title,
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            post.labels.join(', '),
            style: TextStyle(
                color: Color(0xff1C8E9F),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${post.published.day} ${post.published.monthDay.toUpperCase()} ${post.published.year}',
                style: TextStyle(
                    color: Color(0xffD2D2D2),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                post.author.displayName,
                style: TextStyle(
                    color: Color(0xffD2D2D2),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

extension on DateTime {
  String get monthDay {
    return [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ][this.month - 1];
  }
}
