import 'package:flutter/material.dart';
import 'package:flutter_application_1/list_view_test.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/setting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SettingScreen(),
    );
  }
}
