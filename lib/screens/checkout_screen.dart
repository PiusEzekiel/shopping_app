import 'package:flutter/material.dart';
import 'package:shopping_app/models/product.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/checkout_item.dart';

class CheckoutScreen extends StatefulWidget {
  final List<Product> cartItems;
  final Function(Product) onRemoveFromCart;

  CheckoutScreen({
    required this.cartItems,
    required this.onRemoveFromCart,
  });

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                return CheckoutItem(
                  product: widget.cartItems[index],
                  onRemove: widget.onRemoveFromCart,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/order-success');
              },
              child: Text('Place Order'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 1,
      ),
    );
  }
}
