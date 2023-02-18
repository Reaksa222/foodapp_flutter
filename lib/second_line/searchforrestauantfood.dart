import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/restaruant_item_card.dart';
import 'package:flutter_3/starting/Topsearchcustom.dart';
import 'dart:math' as math;

import '../common/constants.dart';
import '../starting/item.dart';

class Searchforrestauant extends StatelessWidget {
  const Searchforrestauant({Key? key}) : super(key: key);

  static const String routeName ='/searchforrestaurant';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Find your Food',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            floating: true,
            pinned: false,
            leadingWidth: 58,
          ),
          _TopsearchCustom(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              delegate: SliverChildBuilderDelegate(
                  childCount: 22, (context , index){
                return Restaruant_item(
                  index: 0,
                  title: name[index],
                  subtitle: subtitle[index],
                  image: imageList[index],
                  margin: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 16
                  ),

                );
              }
              ),
            ),
          )
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
        maxHeight: 135,
        child: Column(
          children: [
            TopsearchCustomDelegate(),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 37,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: const [
                        Text(
                          ' Restaruant ',
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
                    height: 37,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        // border: Border.all(width: 2,color: primaryColor),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children:const [
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
          ],
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




