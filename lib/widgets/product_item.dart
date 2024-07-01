import 'package:flutter/material.dart';

import '../models/product.dart';
import '../screens/checkout_screen.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final Function(Product) onAddToCart;

  ProductItem({
    required this.product,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          // Image.network(
          product.image,
          //   width: 80.0,
          //   height: 80.0,
          //   fit: BoxFit.cover,
          // ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              onAddToCart(product);
              // Add to cart logic
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
