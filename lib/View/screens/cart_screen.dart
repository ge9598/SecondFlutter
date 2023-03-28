import 'package:flutter/material.dart';
import 'package:secondflutter/View/widgets/cart_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Screen"),
      ),
      body: const CartWidget(),
    );
  }
}
