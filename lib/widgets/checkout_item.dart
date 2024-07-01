import 'package:flutter/material.dart';

import '../models/product.dart';

class CheckoutItem extends StatelessWidget {
  final Product product;
  final Function(Product) onRemove;

  CheckoutItem({required this.product, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          product.image,
          //   width: 80.0,
          //   height: 80.0,
          //   fit: BoxFit.cover,
          // ,
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
          IconButton(
            icon: Icon(Icons.remove_circle),
            onPressed: () => onRemove(product),
          ),
        ],
      ),
    );
  }
}
