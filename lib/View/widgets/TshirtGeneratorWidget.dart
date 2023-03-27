import 'package:flutter/material.dart';
import 'package:secondflutter/View/models/tshirt_model.dart';
class TShirtGeneratorWidget extends StatefulWidget{
  const TShirtGeneratorWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TShirtGeneratorWidgetState();
  }
}
class _TShirtGeneratorWidgetState extends State<TShirtGeneratorWidget> {

  final List<String> _colorOptions = ['Red', 'Blue', 'Green'];
  final List<String> _designOptions = ['T-Shirt', 'Crew neck',' Hoodie'];
  final List<String> _sizeOptions = ['Small', 'Medium', 'Large'];

  String? _selectedColor;
  String? _selectedDesign;
  String? _selectedSize;

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
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DropdownButton<String>(
              hint: const Text('Select color'),
              value: _selectedColor,
              items: _colorOptions.map((color) {
                return DropdownMenuItem(
                  value: color,
                  child: Text(color),
                );
              }).toList(),
              onChanged: (selectedColor) {
                setState(() {
                  _selectedColor = selectedColor;

                });
              },
            ),
            DropdownButton<String>(
              hint: const Text('Select design'),
              value: _selectedDesign,
              items: _designOptions.map((design) {
                return DropdownMenuItem(
                  value: design,
                  child: Text(design),
                );
              }).toList(),
              onChanged: (selectedDesign) {
                setState(() {
                  _selectedDesign = selectedDesign;
                });
              },
            ),
            DropdownButton<String>(
              hint: const Text('Select size'),
              value: _selectedSize,
              items: _sizeOptions.map((size) {
                return DropdownMenuItem(
                  value: size,
                  child: Text(size),
                );
              }).toList(),
              onChanged: (selectedSize) {
                setState(() {
                  _selectedSize = selectedSize;
                });
              },
            ),
          ],
        ),

        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            if(_selectedColor != null && _selectedDesign != null && _selectedSize != null) {
              TShirtModel tShirt = _generateTShirt(_selectedColor!, _selectedDesign!, _selectedSize!);
              //TODO: need AddToCart Logic
              const snackBar = SnackBar(
                content: Text("Add the item to the Cart!"),
                duration: Duration(seconds: 2),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);

            }else{
              const snackBar = SnackBar(
                content: Text("Color, Design, and Size must be selected before moving forward!"),
                duration: Duration(seconds: 2),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          child: const Text('Add to Cart'),
        ),
      ],
    );
  }

  TShirtModel _generateTShirt(String selectedColor, String selectedDesign, String selectedSize) {
    return TShirtModel(color: selectedColor, design: selectedDesign, size: selectedSize);
  }
}



