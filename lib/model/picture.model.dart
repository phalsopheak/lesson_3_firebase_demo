import 'dart:convert';

class PictureModel {
  String id;
  String author;
  int width;
  int height;
  String url;
  String downloadUrl;

  PictureModel({
    this.id,
    this.author,
    this.width,
    this.height,
    this.url,
    this.downloadUrl,
  });

  factory PictureModel.fromRawJson(String str) =>
      PictureModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PictureModel.fromJson(Map<String, dynamic> json) => PictureModel(
        id: json["id"],
        author: json["author"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        downloadUrl: json["download_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "author": author,
        "width": width,
        "height": height,
        "url": url,
        "download_url": downloadUrl,
      };
}
