import 'package:flutter/material.dart';

Page2() {
  runApp(page2());
}

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2 two"),
      ),
    );
  }
}
