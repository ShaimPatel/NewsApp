import 'dart:convert';

import 'package:newsapp/models/artical_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticalModel> news = [];
  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=ab3e6a8a42634fd4b1f65172663dcbda";

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticalModel articalModel = ArticalModel(
            title: element['title'],
            author: element['author'],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["content"],
          );
          news.add(articalModel);
        }
      });
    }
  }
}
