import 'package:flutter_blogger_app/data/models.dart';
import 'package:flutter_blogger_app/utils/constans.dart';
import 'package:http/http.dart' as http;

class BloggerApi {
  Future<BloggerModel> getPosts() async {
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://www.googleapis.com/blogger/v3/blogs/${Constants.blogId}/posts?key=${Constants.apiKey}'));
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      return BloggerModel.fromJson(data);
    } else {
      print(response.reasonPhrase);
      return null;
    }
  }
}
