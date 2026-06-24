import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_assets.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: Icon(Icons.menu),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // this is for profile image and edit button
                gerennContainerForImage(),
                SizedBox(height: 16.0),
                decortionContainer(width: 400, height: 200),
                SizedBox(height: 16.0),
                decortionContainer(width: 400, height: 400),

                ///
              ],
            ),
          )),
    );
  }

/////////////////////////////////////////////widgts functinos ////////////////
////////////////////////////////////////////////////////////////////////

  Widget buildSettingOption(String title, IconData icon, VoidCallback onTap) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: Border(
            bottom: BorderSide(
          color: Colors.grey,
          width: 1.0,
        )),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }

  Widget gerennContainerForImage() {
    return Container(
      width: 400,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(AppAssets.bedRomeIamge),
          ),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Handle edit button press
            },
          ),
        ],
      ),
    );
  }

  Widget decortionContainer({required double width, required double height}) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSettingOption('Account', Icons.person, () {
              // Handle Account option tap
            }),
            buildSettingOption('Account', Icons.person, () {
              // Handle Account option tap
            }),
            buildSettingOption('Account', Icons.person, () {
              // Handle Account option tap
            }),
          ],
        ));
  }
}
