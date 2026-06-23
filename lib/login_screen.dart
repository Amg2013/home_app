import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [appButton()],
      ),
    ));
  }

///////////////////////////////////////////////////////////
/////////////////////// Widgets Mehods ///////////////////
///////////////////////////////////////////////////////////

  ///
  int additionalMethod() {
    return 42;
  }

  Widget appButton() {
    return GestureDetector(
      onTap: null,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        height: 50,
        width: 360,
        child: const Center(child: Text('Go to ListViewTest')),
      ),
    );
  }
}
