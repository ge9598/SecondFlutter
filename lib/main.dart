import 'package:flutter/material.dart';
import 'package:secondflutter/View/screens/TShirtGenerationScreen.dart';
import 'package:secondflutter/View/screens/template_screen.dart';
// import 'package:secondflutter/screens/CartScreen.dart';
// import 'package:secondflutter/screens/UserScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [    const TShirtGenerationScreen(), const TemplateScreen(),    CartScreen(),    UserScreen(),
  ];
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            label: 'Create',
            backgroundColor:Colors.black87
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            label: 'Templates',
            backgroundColor:Colors.black87
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
            backgroundColor:Colors.black87
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor:Colors.black87
          ),
        ],
      ),
    );
  }
}

