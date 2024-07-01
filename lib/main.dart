import 'package:flutter/material.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/theme.dart';

import 'screens/checkout_screen.dart';
import 'screens/order_success_screen.dart';
import 'screens/product_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Product> _cartItems = [];

  void _addToCart(Product product) {
    setState(() {
      _cartItems.add(product);
    });
  }

  void _removeFromCart(Product product) {
    setState(() {
      _cartItems.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => ProductListScreen(
              onAddToCart: _addToCart,
            ),
        '/checkout': (context) => CheckoutScreen(
              cartItems: _cartItems,
              onRemoveFromCart: _removeFromCart,
            ),
        '/order-success': (context) => OrderSuccessScreen(),
      },
    );
  }
}
