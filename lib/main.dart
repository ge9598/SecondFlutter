import 'package:flutter/material.dart';
import 'package:secondflutter/View/screens/tshirt_generation_screen.dart';
import 'package:secondflutter/View/screens/template_screen.dart';
import 'package:secondflutter/View/screens/cart_screen.dart';
import 'package:secondflutter/View/screens/user_screen.dart';

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
  final List<Color?> _theme = [
    Colors.blue[200],
    Colors.green[200],
    Colors.orange[400],
    Colors.purple[200]
  ];
  final List<Widget> _screens = [
    const TShirtGenerationScreen(),
    const TemplateScreen(),
    const CartScreen(),
    const UserScreen()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(canvasColor: _theme[_currentIndex]),
        home: Scaffold(
          body: _screens[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: _onTabTapped,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.create),
                  label: 'Create',
                  backgroundColor: _theme[_currentIndex]),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.photo_library),
                  label: 'Templates',
                  backgroundColor: _theme[_currentIndex]),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.shopping_cart),
                  label: 'Cart',
                  backgroundColor: _theme[_currentIndex]),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label: 'Profile',
                  backgroundColor: _theme[_currentIndex]),
            ],
          ),
        ));
  }
}
