import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_assets.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text('Home Page'),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.person, color: Colors.blue),
          ),
        ],
      ),

      // Add a drawer to the Scaffold
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
          ],
        ),
      ),

      //
      body: Container(
        // margin: EdgeInsets.all(20),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          // border: Border.all(color: Colors.grey, width: 3),
          // color: const Color.fromARGB(255, 208, 163, 29),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wednesday, June 20',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 4),

            Text(
              'Good evening, Rebecca',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 6),
            Text('You have 3 rooms active and 12 devices running right now.'),
            SizedBox(height: 24),
            //////////////////// this is the horizontal list of containers
            SizedBox(
              width: double.infinity,
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 103,
                    width: 113,
                    decoration: BoxDecoration(
                      color: AppColors.continerColor,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.percent),
                        Text('90 %'),
                        Text('Humidity'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 103,
                    width: 113,
                    decoration: BoxDecoration(
                      color: AppColors.continerColor,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.percent),
                        Text('90 %'),
                        Text('Humidity'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 103,
                    width: 113,
                    decoration: BoxDecoration(
                      color: AppColors.continerColor,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.percent),
                        Text('90 %'),
                        Text('Humidity'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            ///// row
            Row(
              children: [
                Text(
                  'Rooms',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                GestureDetector(onDoubleTap: null, child: Text('see All')),
              ],
            ),
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Image.asset(AppAssets.bedRomeIamge, fit: BoxFit.cover),
                ),
                title: Text('data'),
                trailing: Icon(Icons.arrow_forward_ios),
                subtitle: Text('data'),
              ),
            ),

            SizedBox(height: 15),

            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              child: ListTile(
                leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: CachedNetworkImage(
                        imageUrl: 'imageUrl',
                        errorWidget: (context, url, error) =>
                            Icon(Icons.bike_scooter),
                        placeholder: (context, url) =>
                            CircularProgressIndicator())),
                title: Text('data'),
                trailing: Icon(Icons.arrow_forward_ios),
                subtitle: Text('data'),
              ),
            ),
            SizedBox(height: 15),

            Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Image.asset(AppAssets.bedRomeIamge, fit: BoxFit.cover),
                ),
                title: Text('data'),
                trailing: Icon(Icons.arrow_forward_ios),
                subtitle: Text('data'),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        ],
      ),
    );
  }
}
