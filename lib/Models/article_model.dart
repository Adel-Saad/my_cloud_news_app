class Articles {
// props ...
  final String title;
  final String description;
  final String url;
  final String urlToImage;
// constr ...
  Articles({this.description, this.title, this.url, this.urlToImage});
// factory named constr ...
  factory Articles.fromJson(Map<String, dynamic> jsonData) {
    return Articles(
      description: jsonData['description'],
      title: jsonData['title'],
      url: jsonData['url'],
      urlToImage: jsonData['urlToImage'],
    );
  }
}
