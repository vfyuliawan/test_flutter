part of 'models.dart';

// To parse this JSON data, do
//
//     final productsGedgetDetail = productsGedgetDetailFromJson(jsonString);

ProductsGedgetDetail productsGedgetDetailFromJson(String str) =>
    ProductsGedgetDetail.fromJson(json.decode(str));

String productsGedgetDetailToJson(ProductsGedgetDetail data) =>
    json.encode(data.toJson());

class ProductsGedgetDetail {
  ProductsGedgetDetail({
    this.id,
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.brand,
    this.category,
    this.thumbnail,
    required this.images,
  });

  final int? id;
  final String? title;
  final String? description;
  final int? price;
  final double? discountPercentage;
  final double? rating;
  final int? stock;
  final String? brand;
  final String? category;
  final String? thumbnail;
  final List<String> images;

  factory ProductsGedgetDetail.fromJson(Map<String, dynamic> json) =>
      ProductsGedgetDetail(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        discountPercentage: json["discountPercentage"].toDouble(),
        rating: json["rating"].toDouble(),
        stock: json["stock"],
        brand: json["brand"],
        category: json["category"],
        thumbnail: json["thumbnail"],
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "discountPercentage": discountPercentage,
        "rating": rating,
        "stock": stock,
        "brand": brand,
        "category": category,
        "thumbnail": thumbnail,
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}
