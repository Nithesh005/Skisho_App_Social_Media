import 'package:flutter/material.dart';
import './assets/style.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    theme:ThemeData(useMaterial3: true),
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
    {'icon': Icons.chat, 'label': 'Chat'},
    {'icon': Icons.settings, 'label': 'Settings'},
    // {'icon': Icons.post_add, 'label': 'Post'},
    // {'icon': Icons.settings, 'label': 'Settings'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skisho'),
        backgroundColor: Color(0x00000000),
        leading: SafeArea(
          child: CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notification_add_outlined),
            color: AppColors.primaryColor,
            onPressed: () {
              print('Navigate page');
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: _navItems.map((item) {
        return BottomNavigationBarItem(
            icon: Icon(
              item['icon'],
              // color: AppColors.primaryColor,
            ),
            label: item['label']);
      }).toList()),
    );
  }
}
