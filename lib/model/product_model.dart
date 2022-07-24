// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

//import 'package:meta/meta.dart';
import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    required this.id,
    required this.attributes,
  });

  int id;
  ProductAttributes attributes;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        attributes: ProductAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class ProductAttributes {
  ProductAttributes({
    required this.name,
    required this.title,
    required this.num,
    required this.image,
  });

  String name;
  String title;
  int num;
  Image image;

  factory ProductAttributes.fromJson(Map<String, dynamic> json) => ProductAttributes(
        name: json["name"],
        title: json["title"],
        num: json["num"],
        image: Image.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "title": title,
        "num": num,
        "image": image.toJson(),
      };
}

class Image {
  Image({
    required this.data,
  });

  List<Datum> data;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.attributes,
  });

  int id;
  DatumAttributes attributes;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        attributes: DatumAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class DatumAttributes {
  DatumAttributes({
    required this.name,
    required this.formats,
    required this.url,
  });

  String name;
  Formats formats;
  String url;

  factory DatumAttributes.fromJson(Map<String, dynamic> json) => DatumAttributes(
        name: json["name"],
        formats: Formats.fromJson(json["formats"]),
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "formats": formats.toJson(),
        "url": url,
      };
}

class Formats {
  Formats({
    required this.large,
    required this.small,
    required this.medium,
    required this.thumbnail,
  });

  Large large;
  Large small;
  Large medium;
  Large thumbnail;

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        large: Large.fromJson(json["large"]),
        small: Large.fromJson(json["small"]),
        medium: Large.fromJson(json["medium"]),
        thumbnail: Large.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "large": large.toJson(),
        "small": small.toJson(),
        "medium": medium.toJson(),
        "thumbnail": thumbnail.toJson(),
      };
}

class Large {
  Large({
    required this.url,
  });

  String url;

  factory Large.fromJson(Map<String, dynamic> json) => Large(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}
