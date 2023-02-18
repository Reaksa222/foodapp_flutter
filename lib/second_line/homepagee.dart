import 'package:flutter/material.dart';
import 'package:flutter_3/common/constants.dart';
import 'package:flutter_3/second_line/notificatoinpage.dart';
import 'package:flutter_3/second_line/popular_listPage.dart';
import 'package:flutter_3/second_line/popular_menu.dart';
import 'package:flutter_3/second_line/restaruant_item_card.dart';

import 'findfoodpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/homepagee';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildtopseason(context),
            SizedBox(height: 8),
            TopsearchCustom(),
            buildContainerOrdernowWidget(context),
            _TitleSectionWidget(
                leadingtext: 'Popular Restaruant',
                traillingtext: 'View all',
              onTap: (){
                Navigator.pushNamed(
                  context,
                  PopularListpage.routeName
                );
              },
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Restaruant_item(
                    index: 0,
                    title: 'Lovy Food',
                    subtitle: '10 min',
                    image: 'assets/images/Vectorr.png',
                      margin: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        bottom: 14,
                      )
                  ),
                  Restaruant_item(
                    index: 1,
                    title: 'Cloudy Food',
                    subtitle: '14 min',
                    image: 'assets/images/Vector.png',
                      margin: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        bottom: 16,
                      )
                  ),
                  Restaruant_item(
                    index: 2,
                    title: 'Circlo Resto',
                    subtitle: '15 min',
                    image: 'assets/images/Vector2.png',
                      margin: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        bottom: 12,
                      )
                  )
                ],
              ),
            ),
            _TitleSectionWidget(
              leadingtext: 'Popular Menu',
              traillingtext: 'view all',
              onTap: (){
                Navigator.pushNamed(
                    context,
                    PopularMenu.routeName,
                );
              },
            ),
            Column(
              children: const [
                RestaurantMenunoprice(
                  index: 0,
                  title: 'Lovy Food',
                  subtitle: '10 min',
                  imagepath: 'assets/images/Rectangle3.png',
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 16,
                    bottom: 6,
                  ),
                ),
                RestaurantMenunoprice(
                  index: 1,
                  title: 'Cloudy Food',
                  subtitle: '16 min',
                  imagepath: 'assets/images/taco-removebg-preview (1).png',
                    margin: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 6,
                    )
                ),
                RestaurantMenunoprice(
                    index: 2,
                    title: 'Cloudy Food',
                    subtitle: '13 min',
                    imagepath: 'assets/images/Rectangle4.png',
                    margin: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 6,
                    )
                ),
                RestaurantMenunoprice(
                    index: 1,
                    title: 'Cloudy Food',
                    subtitle: '16 min',
                    imagepath: 'assets/images/Rectangle.png',
                    margin: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 6,
                    )
                ),
                RestaurantMenunoprice(
                    index: 2,
                    title: 'Cloudy Food',
                    subtitle: '13 min',
                    imagepath: 'assets/images/Rectangle1.png',
                    margin: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 6,
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainerOrdernowWidget(BuildContext context) {
    return Container(
              margin: EdgeInsets.all(12),
              height: 200,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
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
                                    'assets/images/buger.png',
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
                                  'Special Deal for December',
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
                                    primary: secondaryColor,
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

  _buildtopseason(context){
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
          SizedBox(width: 8),
          Text(
            'Hello, Customer!',
            style: TextStyle(
                fontSize: 19,
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
          ),
          Spacer(),
          InkWell(
              child: Icon(
                  Icons.notifications_active,
                  color: Theme.of(context).primaryColor,
              ),
            onTap: (){
                Navigator.pushNamed(
                    context,
                    NotificationPage.routeName
                );
            },
          ),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}

class _TitleSectionWidget extends StatelessWidget {
  const _TitleSectionWidget({
    Key? key,
    required this.leadingtext,
    required this.traillingtext,
    this.onTap
  }) : super(key: key);

  final String leadingtext;
  final String traillingtext;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            leadingtext,
            style: Theme.of(context).textTheme.headline4!.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16
            ),
          ),
          Spacer(),
          TextButton(
              onPressed: onTap,
              child: Text(
                traillingtext,
                style: TextStyle(
                  color: primaryColor,
                ),
              )
          )
        ],
      ),
    );
  }
}

class TopsearchCustom extends StatelessWidget {
  const TopsearchCustom({Key? key}) : super(key: key);

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
                          FindFoodPage.routeName,
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
