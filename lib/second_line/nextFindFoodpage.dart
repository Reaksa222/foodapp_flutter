import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/restaruant_item_card.dart';

import '../common/constants.dart';
import '../starting/pop_menu.dart';
import 'homepagee.dart';
import 'menu_items.dart';

class NextFindFoodPage extends StatelessWidget {
  const NextFindFoodPage({Key? key}) : super(key: key);

  static const String routeName = '/nextfindfood';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Find your Food',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Itemnextff(),
    );
  }
}



class Itemnextff extends StatelessWidget {
  const Itemnextff({Key? key}) : super(key: key);

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
                        ' Menu ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.adjust_rounded,size: 16,color: Colors.white70,),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                    color: primaryColor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Text(
                        ' Salad ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.adjust_rounded,size: 16,color: Colors.white70,),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Text(
                        ' < 5 km ',
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
                title: 'Greeny salad',
                subtitle: 'cloudy food',
                imagepath: 'assets/images/Rectangle3.png',
                margin: EdgeInsets.only(
                  left: 10,
                  right: 16,
                  bottom: 6,
                ),
                price: 10,
              ),
              Restaurant_item_menu(
                  index: 1,
                  title: 'Mixed salad',
                  subtitle: 'Best food ',
                  imagepath: 'assets/images/Rectangle2.png',
                  margin: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 6,
                  ),
                price: 8,
              ),
              Restaurant_item_menu(
                  index: 2,
                  title: 'Fresh salad',
                  subtitle: 'Lovy food',
                  imagepath: 'assets/images/Rectangle3.png',
                  margin: EdgeInsets.only(
                    left: 16,
                    right: 6,
                    bottom: 6,
                  ),
                price: 12,
              ),
              Restaurant_item_menu(
                  index: 1,
                  title: 'Meat salad',
                  subtitle: 'specail food',
                  imagepath: 'assets/images/Rectangle4.png',
                  margin: EdgeInsets.only(
                    left: 16,
                    right: 6,
                    bottom: 6,
                  ),
                price: 12,
              ),
              Restaurant_item_menu(
                  index: 2,
                  title: 'buger salad',
                  subtitle: 'fast food',
                  imagepath: 'assets/images/Rectangle.png',
                  margin: EdgeInsets.only(
                    left: 16,
                    right: 6,
                    bottom: 6,
                  ),
                price: 8,
              ),
              Restaurant_item_menu(
                index: 0,
                title: 'Sweet salad',
                subtitle: 'cloudy food',
                imagepath: 'assets/images/Rectangle3.png',
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

