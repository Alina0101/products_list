import 'package:flutter/foundation.dart';
import '../constants/app_constants.dart';
import '../models/product.dart';

class ProductsProvider extends ChangeNotifier {
  final List<Product> _products = List.from(productsList);

  List<Product> get products => [..._products];

  List<Product> get favoriteProducts =>
      _products.where((product) => product.isFavorite).toList();

  void toggleFavorite(Product product) {
    product.isFavorite = !product.isFavorite;
    notifyListeners();
  }
}
