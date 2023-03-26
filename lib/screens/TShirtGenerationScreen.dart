import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/tshirt_generator_widget.dart';

class TShirtGenerationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('T-Shirt Generation'),
      ),
      body: TShirtGeneratorWidget(),
    );
  }

}

class TShirtGeneratorWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TShirtGeneratorWidgetState();
  }
}
class _TShirtGeneratorWidgetState extends State<TShirtGeneratorWidget> {
  TShirtModel _tShirt = TShirtModel();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Generate your T-Shirt:',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: 200,
          height: 200,
          color: Colors.grey,
          child: const Center(
            child: Text(
              'T-Shirt Preview',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Select Color'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Select Design'),
            ),
          ],
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: Text('Add to Cart'),
        ),
      ],
    );
  }
}

