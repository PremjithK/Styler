class ProductModel {
  final String id;
  final String name;
  final String description;
  final String imageURL;
  final String gender;
  final double price;

  ProductModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageURL,
      required this.gender,
      required this.price});
}
