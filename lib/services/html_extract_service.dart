import 'package:html/parser.dart';

class HtmlService {
  String extractImage(String src) {
    var document = parse(src);
    return document.getElementsByTagName('img').first.attributes['src'];
  }

  String extractText(String src) {
    var document = parse(src);
    return document.body.text;
  }
}
