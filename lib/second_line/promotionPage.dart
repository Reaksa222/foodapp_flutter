import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/OrderPagedetail.dart';
import 'package:flutter_3/second_line/chatPage.dart';
import 'package:flutter_3/second_line/main_page.dart';
import 'package:flutter_3/second_line/notificatoinpage.dart';
import 'package:flutter_3/second_line/orderPage.dart';
import 'package:flutter_3/thirdline/nextorderdetail.dart';

import '../common/constants.dart';

class PromotionPAge extends StatelessWidget {
  const PromotionPAge({Key? key}) : super(key: key);

  static const String routeName ='/promo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Promo',
          style: Theme.of(context).textTheme.headline6!.copyWith(
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const customboxpromo(
                color: primaryColor,
                smallcolor: secondaryColor,
                name: 'Special Deal for December',
                image: 'assets/images/buger.png'
            ),
            const customboxpromo(
                color: secondaryColor,
                smallcolor: primaryColor,
                name: 'Special Deal for December',
                image: 'assets/images/normpav-removebg-preview.png',
            ),
            const customboxpromo(
                color: Colors.green,
                smallcolor: Colors.indigo,
                name: 'Special Deal for December',
                image: 'assets/images/cake_bg.png'
            ),
            const customboxpromo(
                color: tertiaryColor,
                smallcolor: secondaryColor,
                name: 'Special Deal for December',
                image: 'assets/images/taco-removebg-preview (1).png'
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 15,top: 8),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(
                        context,
                        OrdersDetailPage.routeName
                    );
                  },
                  child: Center(
                    child: Text(
                      'Checkout',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
              ),
            ),
            SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}



class customboxpromo extends StatelessWidget {
  const customboxpromo({
    Key? key,
    required this.color,
    required this.smallcolor,
    required this.name,
    required this.image,
  }) : super(key: key);

  final Color color;
  final Color smallcolor;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      height: 195,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(top: 26),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      name,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: () {  },
                      child: Text(
                        'Order now',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: smallcolor,
                        onPrimary: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
          ),
          SizedBox(width: 15)
        ],
      ),
    );
  }
}

