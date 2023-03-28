import 'package:flutter/material.dart';
import 'package:secondflutter/View/widgets/user_widget.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Screen"),
      ),
      body: const UserWidget(),
    );
  }
}
