import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/restaruant_item_card.dart';
import 'package:flutter_3/starting/Topsearchcustom.dart';
import 'dart:math' as math;

import '../starting/item.dart';

class PopularListpage extends StatelessWidget {
   PopularListpage({Key? key}) : super(key: key);

  static const routeName = 'popular';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Popular Restauant',
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
                child: const Icon(Icons.arrow_back),
              ),
            ),
          ),
          _TopsearchCustom(),
          SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
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
                            left: 16,
                            right: 16,
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

  static const String routeName = '/top';

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: true,
      delegate: _TopsearchCustomAppBarDelegate(
        minHeight: 145,
        maxHeight: 125,
        child: Container(
          child: TopsearchCustomDelegate(),
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



