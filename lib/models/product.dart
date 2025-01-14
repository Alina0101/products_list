class Product {
  final String name;
  final double price;
  bool isFavorite;

  Product({
    required this.name,
    required this.price,
    this.isFavorite = false,
  });
}
