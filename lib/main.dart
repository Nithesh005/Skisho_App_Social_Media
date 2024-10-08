import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:skishoapp/Pages/Login.dart';
import 'package:skishoapp/Pages/Page1.dart';
import 'package:skishoapp/Pages/Page2.dart';
import 'package:skishoapp/Pages/Page3.dart';
import 'package:skishoapp/Pages/Settings.dart';

import 'asset/style.dart';

final Logger logger = Logger();
void main() {
  
  // filtersData.map(
  //   (e) => print(e['All']),
  // ).toList();

  runApp(MaterialApp(
    home: const MyApp(),
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, dynamic>> _navItems = [
    {'icon': Icons.home, 'label': 'Home'},
    // {'icon': Icons.chat, 'label': 'Chat'},
    {'icon': Icons.wine_bar_outlined, 'label': 'Trophy'},
    // {'icon': Icons.post_add, 'label': 'Post'},
    {'icon': Icons.settings, 'label': 'Settings'},
  ];
  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    page1(),
    // page2(),
    page3(),
    // page1(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login(),
    );
  }
}
