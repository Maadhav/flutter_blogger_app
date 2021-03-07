import 'package:html/parser.dart';

class HtmlService {
  static String extractImage(String src) {
    var document = parse(src);
    var url;
    try {
      url = document.getElementsByTagName('img')?.first?.attributes['src'];
    } on StateError {
      url = 'https://cdn.shopify.com/s/files/1/1856/9187/articles/b2.jpg';
    }
    return url;
  }

  static String extractText(String src) {
    var document = parse(src);
    return document.body.text;
  }
}
