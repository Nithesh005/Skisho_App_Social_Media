import 'package:flutter/material.dart';

Page3() {
  runApp(page3());
}

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("navigating to page three"),
      ),
    );
  }
}
