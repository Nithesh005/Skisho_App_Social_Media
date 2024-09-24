import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skishoapp/Pages/HomePage.dart';
import 'package:skishoapp/Pages/OTPScreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void CheckAuth() {
    String Username = _userNameController.text;
    String password = _passwordController.text;
    print(Username);

    if (Username == 'skisho' && password == '123') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OTPScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('lib/asset/Images/login.png'), height: 200,),
            Padding(padding: EdgeInsets.all(10.0)),
            TextField(
              textAlign: TextAlign.left,
              controller: _userNameController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: CheckAuth,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
