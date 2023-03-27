import 'package:flutter/material.dart';
import 'package:secondflutter/view/widgets/tshirt_generator_widget.dart';

class TShirtGenerationScreen extends StatelessWidget {

  const TShirtGenerationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('T-Shirt Generation'),
      ),
      body: const TShirtGeneratorWidget(),
    );
  }

}





