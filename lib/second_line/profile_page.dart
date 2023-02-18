

import 'package:flutter/material.dart';
import 'package:flutter_3/common/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const String routeName = '/profile_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopappBar(context),
          SizedBox(height: 20),
          Custompfpage(),
        ],
      )
    );
  }
  Padding TopappBar(BuildContext context) {
    return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    child: Row(
      children: [
        Container(
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        SizedBox(width: 15),
        Text(
          'Profile page ',
          style: TextStyle(
              fontSize: 19,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
      ],
    ),
  );
  }
}

class Custompfpage extends StatelessWidget {
  const Custompfpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(
                  'assets/images/per4.jpeg'
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '  Yunoo Dyn ',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                Text(
                  '  @younodynzz22 ',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                       fontSize: 15,
                  ),
                ),
                Text(
                  '  Manage your Google Account',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Column(
          children:const [
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
            ),
            ListTile(
              leading: Icon(Icons.account_box_rounded),
              title: Text('Your Account'),
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Add Account'),
            ),
            Divider(height: 2,thickness: 1),
            ListTile(
              leading: Icon(Icons.monetization_on_outlined),
              title: Text('Purchases and membership'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Feedback'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),

          ],
        )
      ],
    );
  }
}


