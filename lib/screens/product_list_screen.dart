import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/product_item.dart';

class ProductListScreen extends StatefulWidget {
  final Function(Product) onAddToCart;

  const ProductListScreen({super.key, required this.onAddToCart});

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<Product> _products = [
    Product(
      id: 1,
      name: 'T-Shirt',
      price: 19.99,
      imagePath: 'images/tshirt.jpg',
      description: 'This is a short-sleeve t-shirt.',
    ),
    Product(
      id: 2,
      name: 'Jeans',
      price: 49.99,
      imagePath: 'images/jeans.jpg',
      description: 'This is a pair of denim jeans.',
    ),
    Product(
      id: 3,
      name: 'Belt',
      price: 4.99,
      imagePath: 'images/belt.jpg',
      description: 'A good belt to hold up your pants',
    ),
    Product(
      id: 4,
      name: 'Shoes',
      price: 9.99,
      imagePath: 'images/shoe.jpg',
      description: 'The shoes for every season.',
    ),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          return ProductItem(
            product: _products[index],
            onAddToCart: widget.onAddToCart,
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 0,
      ),
    );
  }
}
