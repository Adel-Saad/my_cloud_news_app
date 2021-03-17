import 'package:cloud_news_app/Models/article_model.dart';

class ArticlList {
// props...
  final List<dynamic> articlList;
// constr ...
  ArticlList({this.articlList});
// factory ...
  factory ArticlList.fromJson(Map<String, dynamic> jsonData) {
    return ArticlList(
      articlList: jsonData['articles'],
    );
  }
}
