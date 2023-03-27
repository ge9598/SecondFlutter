import 'package:flutter/material.dart';
import 'package:secondflutter/View/widgets/template_widget.dart';
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
