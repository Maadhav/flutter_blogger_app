import 'package:html/parser.dart';

class HtmlService {
  static String extractImage(String src) {
    var document = parse(src);
    return document.getElementsByTagName('img').first.attributes['src'];
  }

  static String extractText(String src) {
    var document = parse(src);
    return document.body.text;
  }
}
