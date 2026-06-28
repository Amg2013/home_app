import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/app_button.dart';
import 'package:flutter_application_1/core/utils/app_routs.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
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
            // appTextField(),
            SizedBox(height: 20),
            //  appTextField(),
            SizedBox(height: 50),
            AppButton(
              buttonText: 'Sign Up',
              onPressed: () {
                // Handle login action
              },
            ),

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

  Widget appButton(String buttonText, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
            context,
            //   MaterialPageRoute(
            //       builder: (context) => SettingScreen(
            //           userName: 'Amgad', userEmail: 'amgad@example.com')),
            // );
            AppRoutes.settingRoute);
      },
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
}
