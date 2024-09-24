// import 'dart:nativewrappers/flutter pu _internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';

void ProfileSearch() {
  runApp(Submitform());
}

class Submitform extends StatefulWidget {
  const Submitform({super.key});

  @override
  State<Submitform> createState() => _SubmitformState();
}

class _SubmitformState extends State<Submitform> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  void _submitForm() {
    print('Name:${_nameController.text}');
    print('Name:${_emailController.text}');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Nithi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Enter your name",
                labelText: "Name",
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Enter your email",
                labelText: "email",
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
