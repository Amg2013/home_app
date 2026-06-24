import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            appLogo(),
            SizedBox(height: 20),
            appTextField(),
            SizedBox(height: 20),
            appTextField(),
            SizedBox(height: 50),
            appButton('login'),
            //
          ],
        ),
      ),
    ));
  }

//////////////////////////////////////////////////////////
/////////////////////// Widgets Mehods ///////////////////
//////////////////////////////////////////////////////////

  Widget appLogo() {
    return Container(
      height: 300,
      width: 50,
      child: Icon(Icons.home),
    );
  }

  Widget appButton(String buttonText) {
    return GestureDetector(
      onTap: null,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        height: 50,
        width: 360,
        child: Center(child: Text('$buttonText')),
      ),
    );
  }

  Widget appTextField() {
    return Container(
      height: 50,
      width: 360,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter your text here',
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }
}
