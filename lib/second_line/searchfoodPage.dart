import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/findfoodpage.dart';
import 'package:flutter_3/second_line/menu_items.dart';

class searchFoodPage extends StatelessWidget {
  const searchFoodPage({Key? key}) : super(key: key);

  static const String routeName ='/searchfood';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(
          'Popular Menu',
          style: Theme.of(context).textTheme.headline6!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          topsearchFindfood(),
          MenuPage(
              index: 0,
              title: 'ice cream',
              subtitle: 'best food for child',
              image: 'assets/images/icecream.png',
              price: 10,
              margin: EdgeInsets.only(left: 2,right: 2,bottom: 12)
          ),
          MenuPage(
              index: 1,
              title: 'Special cream',
              subtitle: 'best food for child',
              image: 'assets/images/cakeee.png',
              price: 13,
              margin: EdgeInsets.only(left: 5,right: 2,bottom: 10)
          )
        ],
      ),
    );
  }
}

class topsearchFindfood extends StatelessWidget {
  const topsearchFindfood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                          hintText: 'cream',
                          hintStyle: TextStyle(color: Colors.black.withOpacity(0.8)),
                          suffixIcon: Icon(Icons.search)
                      )
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: (){
                      print('Hello');
                    },
                    splashRadius: 1,
                    icon: Icon(
                      Icons.filter_list,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

