import 'package:flutter/material.dart';
<<<<<<< Updated upstream

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
=======

import './assets/style.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    theme: ThemeData(useMaterial3: true, fontFamily: 'Poppins'),
>>>>>>> Stashed changes
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Skishooo',
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Poppins',
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Color(0x00000000),
      ),
    );
  }
}
