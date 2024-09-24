import 'package:flutter/material.dart';
import 'package:skishoapp/Pages/HomePage.dart';

class OTPScreen extends StatelessWidget {
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter OTP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('lib/asset/Images/otp.png'), height: 200,),
            Text(
              'Please enter the OTP sent to your phone',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _otpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'OTP',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle OTP submission
                String otp = _otpController.text;
                if (otp.isNotEmpty) {
                  // Add your OTP verification logic here
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HomePage()),
                  // );
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (Route<dynamic> route) => false,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please enter the OTP')),
                  );
                }
              },
              child: Text('Submit'),
            ),
            TextButton(
              onPressed: () {
                // Handle OTP resend
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('OTP resent')),
                );
              },
              child: Text('Resend OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
