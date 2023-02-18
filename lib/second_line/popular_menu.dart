import 'package:flutter/material.dart';
import 'package:flutter_3/common/constants.dart';
import 'package:flutter_3/second_line/searchfoodPage.dart';
import 'package:flutter_3/starting/pop_menu.dart';
import 'dart:math' as math;

import 'homepagee.dart';
import 'menu_items.dart';

class PopularMenu extends StatelessWidget {
  const PopularMenu({Key? key}) : super(key: key);

  static const String routeName ='/popularmenu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Popular Menu',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            floating: true,
            pinned: false,
            leadingWidth: 58,
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Theme.of(context).primaryColor.withOpacity(0.2),
                shape: BoxShape.rectangle
                ),
                margin: const EdgeInsets.only(left: 12),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back,color: primaryColor),
                ),
            ),
          ),
          _TopsearchCustom(),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 15),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                        (context , index){
                      return MenuPage(
                        index: 0,
                        title: namefood[index],
                        subtitle: menusubtitle[index],
                        image: menuimage[index],
                        margin: EdgeInsets.only(
                          left: 2,right: 2,bottom: 12
                        ),
                        price: price[index] ,
                      );
                    },childCount: 20,
                )
            ),
          ),
        ],
      ),
    );
  }
}

class _TopsearchCustom extends StatelessWidget {
  const _TopsearchCustom({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: true,
      delegate: _TopsearchCustomAppBarDelegate(
        minHeight: 145,
        maxHeight: 125,
        child: Container(
          child: Customsearchappbar(),
        ),
      ),
    );
  }
}

class _TopsearchCustomAppBarDelegate extends SliverPersistentHeaderDelegate {
  _TopsearchCustomAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  Widget build(BuildContext context, double shrinkOffset , bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  double get minExtent =>  minHeight;

  @override
  bool shouldRebuild (_TopsearchCustomAppBarDelegate oldDelegate){
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class Customsearchappbar extends StatelessWidget {
  const Customsearchappbar({Key? key}) : super(key: key);

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
                  child: InkWell(
                    child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                            hintText: 'Search',
                            suffixIcon: Icon(Icons.search)
                        )
                    ),
                    onTap: (){
                      Navigator.pushNamed(
                          context,
                          searchFoodPage.routeName
                      );
                    },
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







