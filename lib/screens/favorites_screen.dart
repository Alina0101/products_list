import 'package:flutter/material.dart';
import 'package:products_list/screens/widgets/products_list.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    final favoriteProducts = productsProvider.favoriteProducts;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Избранное'),
      ),
      body: favoriteProducts.isEmpty
          ? const Center(
        child: Text('Пока что нет избранных продуктов!'),
      )
          : ProductsList(
        products: favoriteProducts,
        productsProvider: productsProvider,
        isFavorite: true,
      ),
    );
  }
}
