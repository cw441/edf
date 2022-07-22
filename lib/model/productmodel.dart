import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    required  this.data,
    required  this.meta,
  });

  List<ProductModelDatum> data;
  Meta meta;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    data: List<ProductModelDatum>.from(json["data"].map((x) => ProductModelDatum.fromJson(x))),
    meta: Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "meta": meta.toJson(),
  };
}

class ProductModelDatum {
  ProductModelDatum({
    required  this.id,
    required  this.attributes,
  });

  int id;
  PurpleAttributes attributes;

  factory ProductModelDatum.fromJson(Map<String, dynamic> json) => ProductModelDatum(
    id: json["id"],
    attributes: PurpleAttributes.fromJson(json["attributes"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "attributes": attributes.toJson(),
  };
}

class PurpleAttributes {
  PurpleAttributes({
    required  this.name,
    required  this.title,
    required  this.num,
    required  this.createdAt,
    required   this.updatedAt,
    required  this.publishedAt,
    required   this.image,
  });

  String name;
  String title;
  int num;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;
  Image image;

  factory PurpleAttributes.fromJson(Map<String, dynamic> json) => PurpleAttributes(
    name: json["name"],
    title: json["title"],
    num: json["num"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    publishedAt: DateTime.parse(json["publishedAt"]),
    image: Image.fromJson(json["image"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "title": title,
    "num": num,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "publishedAt": publishedAt.toIso8601String(),
    "image": image.toJson(),
  };
}

class Image {
  Image({
    required   this.data,
  });

  List<ImageDatum> data;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    data: List<ImageDatum>.from(json["data"].map((x) => ImageDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class ImageDatum {
  ImageDatum({
    required   this.id,
    required  this.attributes,
  });

  int id;
  FluffyAttributes attributes;

  factory ImageDatum.fromJson(Map<String, dynamic> json) => ImageDatum(
    id: json["id"],
    attributes: FluffyAttributes.fromJson(json["attributes"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "attributes": attributes.toJson(),
  };
}

class FluffyAttributes {
  FluffyAttributes({
    required  this.name,
    required   this.alternativeText,
    required   this.caption,
    required   this.width,
    required   this.height,
    required   this.formats,
    required this.hash,
    required  this.ext,
    required  this.mime,
    required  this.size,
    required this.url,
    required this.previewUrl,
    required  this.provider,
    this.providerMetadata,
    required  this.createdAt,
    required  this.updatedAt,
  });

  String name;
  String alternativeText;
  String caption;
  int width;
  int height;
  Formats formats;
  String hash;
  String ext;
  String mime;
  double size;
  String url;
  dynamic previewUrl;
  String provider;
  dynamic providerMetadata;
  DateTime createdAt;
  DateTime updatedAt;

  factory FluffyAttributes.fromJson(Map<String, dynamic> json) => FluffyAttributes(
    name: json["name"],
    alternativeText: json["alternativeText"],
    caption: json["caption"],
    width: json["width"],
    height: json["height"],
    formats: Formats.fromJson(json["formats"]),
    hash: json["hash"],
    ext: json["ext"],
    mime: json["mime"],
    size: json["size"].toDouble(),
    url: json["url"],
    previewUrl: json["previewUrl"],
    provider: json["provider"],
    providerMetadata: json["provider_metadata"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "alternativeText": alternativeText,
    "caption": caption,
    "width": width,
    "height": height,
    "formats": formats.toJson(),
    "hash": hash,
    "ext": ext,
    "mime": mime,
    "size": size,
    "url": url,
    "previewUrl": previewUrl,
    "provider": provider,
    "provider_metadata": providerMetadata,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
  };
}

class Formats {
  Formats({
    required   this.large,
    required  this.small,
    required  this.medium,
    required  this.thumbnail,
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
    required   this.ext,
    required  this.url,
    required   this.hash,
    required   this.mime,
    required   this.name,
    this.path,
    required   this.size,
    required   this.width,
    required  this.height,
  });

  String ext;
  String url;
  String hash;
  String mime;
  String name;
  dynamic path;
  double size;
  int width;
  int height;

  factory Large.fromJson(Map<String, dynamic> json) => Large(
    ext: json["ext"],
    url: json["url"],
    hash: json["hash"],
    mime: json["mime"],
    name: json["name"],
    path: json["path"],
    size: json["size"].toDouble(),
    width: json["width"],
    height: json["height"],
  );

  Map<String, dynamic> toJson() => {
    "ext": ext,
    "url": url,
    "hash": hash,
    "mime": mime,
    "name": name,
    "path": path,
    "size": size,
    "width": width,
    "height": height,
  };
}

class Meta {
  Meta({
    required this.pagination,
  });

  Pagination pagination;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    pagination: Pagination.fromJson(json["pagination"]),
  );

  Map<String, dynamic> toJson() => {
    "pagination": pagination.toJson(),
  };
}

class Pagination {
  Pagination({
    required  this.page,
    required   this.pageSize,
    required   this.pageCount,
    required   this.total,
  });

  int page;
  int pageSize;
  int pageCount;
  int total;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
    page: json["page"],
    pageSize: json["pageSize"],
    pageCount: json["pageCount"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "page": page,
    "pageSize": pageSize,
    "pageCount": pageCount,
    "total": total,
  };
}
