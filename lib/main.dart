import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/login_screen.dart';
import 'package:flutter_application_1/features/setting/setting_screen.dart';
import 'package:flutter_application_1/features/profile/state_full_wdiget_example.dart';
import 'package:flutter_application_1/core/utils/app_routs.dart';
import 'package:flutter_application_1/stateull_screen.dart';

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
        // home: LoginScreen(),/
        initialRoute: '/',
        routes: {
          AppRoutes.loginRoute: (context) => const LoginScreen(),
          AppRoutes.settingRoute: (context) =>
              SettingScreen(userName: 'Amgad', userEmail: 'email@example.com')
        });
  }
}
