import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/setting/setting_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

// setSates
// intstate
class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SettingScreen(
                      userName: 'Amgad', userEmail: 'amgad@example.com')));
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
