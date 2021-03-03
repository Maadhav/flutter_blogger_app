import 'package:flutter/material.dart';

class Thumbnail extends StatelessWidget {
  final String imageUrl;

  const Thumbnail({Key key, this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: Offset(0.5,0.5),
            blurRadius: 10
          )
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(imageUrl,fit: BoxFit.fitWidth,),
      ),
    );
  }
}
