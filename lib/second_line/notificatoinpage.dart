import 'package:flutter/material.dart';
import 'package:flutter_3/common/constants.dart';
import 'package:flutter_3/common/home_page.dart';
import 'package:flutter_3/second_line/callpage.dart';
import 'package:flutter_3/second_line/chatPage.dart';
import 'package:flutter_3/second_line/main_page.dart';
import 'package:flutter_3/second_line/mychat.dart';
import 'package:flutter_3/starting/Topsearchcustom.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  static const String routeName ='/notificationpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: Theme.of(context).textTheme.headline6!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          InkWell(
              child: Icon(
                  Icons.home,color: primaryColor,
              ),
            onTap: (){
                Navigator.pushNamed(
                    context,
                    MainPage.routeName
                );
            },
          ),
          SizedBox(width: 14),

        ],
      ),
      body: Column(
        children: const [
           TopsearchCustomDelegate(),
          SizedBox(height: 14),
          orderingitem(
              index: 0,
              name: 'Your order is completed!',
              icon: Icons.check_circle,
              time: '4:30',
            color: primaryColor,

          ),
          orderingitem(
              index: 0,
              name: 'Your order is completed!',
              icon: Icons.check_circle,
              time: '3:02',
            color: primaryColor,
          ),
          orderingitem(
              index: 0,
              name: 'You received 200 points',
              icon: Icons.monetization_on,
              time: '2:30',
            color: secondaryColor,
          ),
        ],
      ),
    );
  }
}


class orderingitem extends StatelessWidget {
  const orderingitem({
    Key? key,
    required this.index,
    required this.name,
    required this.icon,
    required this.time,
    required this.color,
  }) : super(key: key);

  final int index;
  final String name;
  final IconData icon;
  final String time;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Container(
            height: 60,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                  height: 50,
                  child: Icon(
                    icon,
                    size: 60,
                    color: color,
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        time,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
