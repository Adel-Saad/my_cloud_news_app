import 'dart:convert';

import 'package:cloud_news_app/Models/article_list_model.dart';
import 'package:cloud_news_app/Models/article_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiServices {
  // fetching methods ... 1 -
  Future<List<Articles>> fetcharticles() async {
    List<Articles> articles = [];
    final String apiUrl =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=123b9ae63ec446e587334481f07771be';
    Uri uri = Uri.parse(apiUrl);
    Response response = await http.get(uri);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);

      ArticlList articlList = ArticlList.fromJson(jsonData);
      articles =
          articlList.articlList.map((e) => Articles.fromJson(e)).toList();
      return articles;
    } else {
      print(response.statusCode);
    }
  }

  // fetching methods ... 2- articles by category ..
  Future<List<Articles>> fetcharticlesByCategory(String category) async {
    List<Articles> articles = [];
    final String apiUrl =
        'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=123b9ae63ec446e587334481f07771be';
    Uri uri = Uri.parse(apiUrl);
    Response response = await http.get(uri);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);

      ArticlList articlList = ArticlList.fromJson(jsonData);
      articles =
          articlList.articlList.map((e) => Articles.fromJson(e)).toList();
      return articles;
    } else {
      print(response.statusCode);
    }
  }

  // fetching methods ... 2- articles by category ..
  Future<List<Articles>> fetcharticlesByCountry(String country) async {
    List<Articles> articles = [];
    final String apiUrl =
        'https://newsapi.org/v2/top-headlines?country=$country&apiKey=123b9ae63ec446e587334481f07771be';
    Uri uri = Uri.parse(apiUrl);
    Response response = await http.get(uri);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);

      ArticlList articlList = ArticlList.fromJson(jsonData);
      articles =
          articlList.articlList.map((e) => Articles.fromJson(e)).toList();
      return articles;
    } else {
      print(response.statusCode);
    }
  }
}
