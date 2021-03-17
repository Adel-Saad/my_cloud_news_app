import 'package:cloud_news_app/Models/article_model.dart';
import 'package:flutter/cupertino.dart';

import '../Services/api_services.dart';

class ArticlesViewModel extends ChangeNotifier {
// props ...
  List<Articles> _articles;
  List<Articles> _articlesByCategory;
// fetching methods...
  fetchArticles() async {
    _articles = await ApiServices().fetcharticles();
    notifyListeners();
  }

  fetchArticlesByCategory(String category) async {
    _articlesByCategory = await ApiServices().fetcharticlesByCategory(category);
    notifyListeners();
  }

// getters ...
  List<Articles> get articles => _articles;
  List<Articles> get articlesByCategory => _articlesByCategory;
}
