class BrandModel {
  String id;
  String name;
  String image;
  bool? isFeatured;
  int? productsCount;

  BrandModel({
    required this.id,
    required this.image,
    required this.name,
    this.isFeatured,
    this.productsCount,
  });

  static BrandModel empty() => BrandModel(id: "", image: "", name: "");

  toJson() {
    return {
      "Id": id,
      "Name": name,
      "Image": image,
      "ProductsCount": productsCount,
      "isFeatured": isFeatured,
    };
  }

  factory BrandModel.fromJson(Map<String, dynamic> document) {
    final data = document;
    if (data.isEmpty) return BrandModel.empty();

    return BrandModel(
      id: data["Id"] ?? "",
      name: data["Name"] ?? "",
      image: data["Image"] ?? "",
      productsCount: data["productsCount"] ?? "",
      isFeatured: data["isFeatured"] ?? "",
    );
  }
}
