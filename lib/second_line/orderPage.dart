import 'package:flutter/material.dart';
import 'package:flutter_3/common/constants.dart';
import 'package:flutter_3/starting/Topsearchcustom.dart';
import 'package:flutter_3/thirdline/LovyFoodscreen.dart';
import 'package:flutter_3/thirdline/nextorderdetail.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  static const String routeName = '/orderspage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        buildPaddingTopbar(context),
          TopsearchCustomDelegate(),
          SizedBox(height: 14),
         const chatMenufororder(
              index: 0,
              name: 'Original Salad',
              subtitle: 'Lovy Food',
              profile: 'assets/images/Rectangle3.png',
              price: 10,
              color: Colors.green,
              text: ' process ',
          ),
          const chatMenufororder(
              index: 1,
              name: 'Fresh Salad',
              subtitle: 'Recto Food',
              profile: 'assets/images/Rectangle2.png',
              price: 10,
              color: Colors.green,
              text: ' process ',
          ),
          const chatMenufororder(
              index: 2,
              name: 'Greeny Salad',
              subtitle: 'Cloudy Food',
              profile: 'assets/images/Rectangle4.png',
              price: 12,
              color: Colors.blue,
              text: 'Completed',
          ),
          const chatMenufororder(
            index: 2,
            name: 'Greeny Salad',
            subtitle: 'Cloudy Food',
            profile: 'assets/images/Rectangle6.png',
            price: 18,
            color: Colors.red,
            text: ' Cancel ',
          ),
          SizedBox(height: 12),
        ],
      )
    );
  }

  Padding buildPaddingTopbar(BuildContext context) {
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
              'Chat History',
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


class chatMenufororder extends StatelessWidget {
  const chatMenufororder({
    Key? key,
    required this.index,
    required this.name,
    required this.subtitle,
    required this.profile,
    required this.price,
    required this.color,
    required this.text,
  }) : super(key: key);

  final int index;
  final String name;
  final String subtitle;
  final String profile;
  final int price;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Container(
            height: 65,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    profile,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        subtitle,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '\$${price.toString()}',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: primaryColor,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.only(left: 6,right: 6),
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          text,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      onTap: (){
                        Navigator.pushNamed(
                            context,
                            LovyFoodPage.routeName
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        )
      ],
    );
  }
}
