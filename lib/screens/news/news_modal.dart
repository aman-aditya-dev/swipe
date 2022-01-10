class NewsModal {
  String status;
  List<Result> result;

  NewsModal({this.status, this.result});

  NewsModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['result'] != null) {
      result = [];
      json['result'].forEach((v) {
        result.add(Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['status'] = status;
    if (result != null) {
      data['result'] = result.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  String author;
  String description;
  String publishedAt;
  String sourceName;
  String title;
  String url;
  String urlToImage;

  Result(
      {this.author,
      this.description,
      this.publishedAt,
      this.sourceName,
      this.title,
      this.url,
      this.urlToImage});

  Result.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    description = json['description'];
    publishedAt = json['publishedAt'];
    sourceName = json['sourceName'];
    title = json['title'];
    url = json['url'];
    urlToImage = json['urlToImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['author'] = author;
    data['description'] = description;
    data['publishedAt'] = publishedAt;
    data['sourceName'] = sourceName;
    data['title'] = title;
    data['url'] = url;
    data['urlToImage'] = urlToImage;
    return data;
  }
}
