import 'package:flutter/material.dart';

class TemplateScreen extends StatelessWidget{
  const TemplateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Template Screen"),

      ),
      body: const TemplateWidget(),
    );
  }


}
