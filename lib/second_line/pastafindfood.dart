import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/restaruant_item_card.dart';

import '../common/constants.dart';
import 'homepagee.dart';

class Findpasta extends StatelessWidget {
  const Findpasta({Key? key}) : super(key: key);

  static const String routeName = '/findpasta';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Find your food',
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: pasta(),
    );
  }
}

class pasta extends StatelessWidget {
  const pasta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopsearchCustom(),
          Container(
            padding: EdgeInsets.only(left: 14,top: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      // border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Text(
                        ' pasta ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.adjust_rounded,size: 16,color: Colors.white70,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: const [
              Restaurant_item_menu(
                index: 0,
                title: 'Sweet pasta',
                subtitle: 'cloudy food',
                imagepath: 'assets/images/pasta.png',
                margin: EdgeInsets.only(
                  left: 10,
                  right: 16,
                  bottom: 6,
                ),
                price: 10,
              ),
              Restaurant_item_menu(
                index: 1,
                title: 'Fresh Pasta',
                subtitle: 'Best food ',
                imagepath: 'assets/images/pastaa.png',
                margin: EdgeInsets.only(
                  left: 16,
                  right: 6,
                  bottom: 6,
                ),
                price: 8,
              ),
              Restaurant_item_menu(
                index: 2,
                title: 'Italain Pasta',
                subtitle: 'Lovy food',
                imagepath: 'assets/images/pasta2.png',
                margin: EdgeInsets.only(
                  left: 16,
                  right: 6,
                  bottom: 6,
                ),
                price: 12,
              ),
              Restaurant_item_menu(
                index: 3,
                title: 'Original pasta',
                subtitle: 'specail food',
                imagepath: 'assets/images/pasta3.png',
                margin: EdgeInsets.only(
                  left: 16,
                  right: 6,
                  bottom: 6,
                ),
                price: 12,
              ),
              Restaurant_item_menu(
                index: 4,
                title: 'chili pasta',
                subtitle: 'fast food',
                imagepath: 'assets/images/Rectangle6.png',
                margin: EdgeInsets.only(
                  left: 16,
                  right: 6,
                  bottom: 6,
                ),
                price: 8,
              ),
              Restaurant_item_menu(
                index: 5,
                title: 'mixed pasta',
                subtitle: 'cloudy food',
                imagepath: 'assets/images/pasta2.png',
                margin: EdgeInsets.only(
                  left: 10,
                  right: 16,
                  bottom: 6,
                ),
                price: 12,
              ),
            ],
          )
        ],
      ),
    );
  }
}

