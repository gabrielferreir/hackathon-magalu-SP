class ProductModel {
  final int id;
  final String name;
  final List<String> listImages;
  final String description;
  final double price;
  final int points;

  ProductModel(this.id, this.name, this.listImages, this.description,
      this.price, this.points);

  static fromMap(Map<String, dynamic> json) {
    return ProductModel(
        0, json['name'], [json['image']], '', 200, json['points']);
  }
}
