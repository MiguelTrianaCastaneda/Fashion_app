import 'dart:convert';

List<ProductsCategory> productsCategoryFromJson(String str) =>
    List<ProductsCategory>.from(
        json.decode(str).map((x) => ProductsCategory.fromJson(x)));

String productsCategoryToJson(List<ProductsCategory> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductsCategory {
  ProductsCategory({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.images,
  });

  int id;
  String title;
  int price;
  String description;
  Category category;
  List<String> images;

  factory ProductsCategory.fromJson(Map<String, dynamic> json) =>
      ProductsCategory(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        description: json["description"],
        category: Category.fromJson(json["category"]),
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category.toJson(),
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}

class Category {
  Category({
    required this.id,
    required this.name,
    required this.image,
  });

  int id;
  String name;
  String image;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
      };
}
