import 'package:flutter/material.dart';
import 'package:secondflutter/View/widgets/User/user_widget.dart';
import 'package:secondflutter/View/widgets/User/orders_widget.dart';
import 'package:secondflutter/View/widgets/User/product_widget.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Screen"),
      ),
      body: Column(
        children: const [UserWidget(), OrdersWidget(), ProductWidget()],
      ),
    );
  }
}

class OrderWidget {}
