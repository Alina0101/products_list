import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../../providers/products_provider.dart';

class ProductsList extends StatelessWidget {
  final List<Product> products;
  final bool isFavorite;
  final ProductsProvider productsProvider;

  const ProductsList({
    super.key,
    required this.products,
    required this.productsProvider,
    this.isFavorite = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: ListTile(
            title: Text(
              product.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              '${product.price.toStringAsFixed(0)} ₽',
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            leading: const Icon(Icons.fastfood_outlined),
            trailing: isFavorite
                ? null
                : IconButton(
                    icon: Icon(
                      product.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: product.isFavorite ? Colors.red : null,
                    ),
                    onPressed: () {
                      productsProvider.toggleFavorite(product);
                    },
                  ),
          ),
        );
      },
    );
  }
}
