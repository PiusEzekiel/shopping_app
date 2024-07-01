import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final double price;
  final String imagePath;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
  });

  Widget get image {
    if (imagePath != null) {
      return Image(
        image: AssetImage(imagePath!),
        fit: BoxFit.cover,
        width: 120.0,
        height: 120.0,
      );
    } else {
      return const SizedBox(
        width: 100,
        height: 100,
        child: Icon(Icons.image_not_supported),
      );
    }
  }
}
