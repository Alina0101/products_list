import 'package:flutter/material.dart';
import 'package:products_list/screens/widgets/products_list.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(context);
    final products = productsProvider.products;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Все продукты'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(context, '/favorites');
            },
          ),
        ],
      ),
      body: ProductsList(
        products: products,
        productsProvider: productsProvider,
      ),
    );
  }
}
