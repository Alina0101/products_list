import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/all_products_screen.dart';
import 'screens/favorites_screen.dart';
import 'providers/products_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const AllProductsScreen(),
          '/favorites': (context) => const FavoritesScreen(),
        },
      ),
    );
  }
}
