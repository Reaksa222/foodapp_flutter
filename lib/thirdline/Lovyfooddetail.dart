import 'package:flutter/material.dart';
import 'package:flutter_3/thirdline/testimonailspage.dart';

import '../common/constants.dart';

class LovyfoodDetail extends StatelessWidget {
  const LovyfoodDetail({Key? key}) : super(key: key);

  static const String routeName ='lovydetail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: 230,
                  width: double.maxFinite,
                  decoration:  BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/restaurant.png'
                        ),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
              ),
              buildPositionedpopular1(context),
            ],
          ),
        )
    );
  }
  Positioned buildPositionedpopular1(BuildContext context) {
    return Positioned(
      top: 80,
      child: Container(
        padding: EdgeInsets.only(left: 14,right: 14,top: 20),
        height: 900,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(25),
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            Text(
              'Lovy Food Restaurant',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: primaryColor,
                  size: 20,
                ),
                SizedBox(width: 18),
                Text('3 km',style: TextStyle(fontSize: 13)),
                SizedBox(width: 20),
                Icon(
                  Icons.star_half,
                  color: primaryColor,
                  size: 20,
                ),
                SizedBox(width: 18),
                Text('4.8 rating',style: TextStyle(fontSize: 13)),
              ],
            ),
            SizedBox(height: 18),
            const Text(
                'We are one of the best restaurants in the city of Surabaya with years of experience. We serve a lot of quality food cooked directly by professional chefs. Hope you like it!'
            ),
            SizedBox(height: 25),
            Row(
              children: const [
                Text(
                  'Popular Menu',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'See all',
                  style: TextStyle(color: primaryColor),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                        'assets/images/buger.png',
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hamburger',
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '\$${10}',
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: primaryColor,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 60),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                        'assets/images/taco-removebg-preview (1).png',
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Taco',
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '\$${11}',
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: primaryColor,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Testimonials',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                InkWell(
                  child: Text(
                    'See all',
                    style: TextStyle(color: primaryColor),
                  ),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        TestimonailPage.routeName
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            Testimonials(
              name: 'Jenny',
              subtitle: 'about lovy food',
              subt2: 'I like it so much!',
              image: 'assets/images/per1.jpg',
              rate: '5',
            ),
            SizedBox(height: 10),
            Testimonials(
              name: 'Daanie',
              subtitle: 'about lovy food',
              subt2: 'omg, this is amazing!',
              image: 'assets/images/per2.jpg',
              rate: '4',
            ),
          ],
        ),
      ),
    );
  }
}

class Testimonials extends StatelessWidget {
  Testimonials({
    Key? key,

    required this.name,
    required this.subtitle,
    required this.subt2,
    required this.image,
    required this.rate,
   // required this.margin,
  }) : super(key: key);

  final String name;
  final String subtitle;
  final String subt2;
  final String image;
  final String rate;
 // final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
            height: 84,
            width: double.infinity,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    image,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9,left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        subtitle,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        subt2,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                    SizedBox(height: 7),
                    Padding(
                      padding: const EdgeInsets.only(left: 9,top: 9),
                      child: Container(
                        height: 22,
                        width: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.star,color: Colors.white,size: 15),
                            SizedBox(width: 6),
                            Text(
                              rate,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                SizedBox(width: 18),
              ],
            ),
          ),
        )
      ],
    );
  }
}

