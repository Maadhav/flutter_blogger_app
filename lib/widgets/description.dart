import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String content;

  const Description({Key key, this.content}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          content,
          style: TextStyle(
            color: Color(0xff4F4F4F),
            fontSize: 16,
            height: 1.5
          ),
          maxLines: 5,
          overflow: TextOverflow.fade,
        ),
        Text(
          'READ MORE',
          style: TextStyle(
            color: Color(0xff1C8E9F),
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),
        ),
      ],
    );
  }
}
