import 'package:flutter/material.dart';
import 'package:flutter_3/common/constants.dart';
import 'package:flutter_3/thirdline/Lovyfooddetail.dart';

class LovyFoodPage extends StatelessWidget {
  const LovyFoodPage({Key? key}) : super(key: key);

  static const String routeName ="/Lovyfood";

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
                height: 265,
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
            buildPositionedpopular(context),
          ],
        ),
      )
    );
  }
  Positioned buildPositionedpopular(BuildContext context) {
    return Positioned(
            top: 240,
            child: Container(
              padding: EdgeInsets.only(left: 14,right: 14,top: 30),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Container(
                          height: 28,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            ' Popular ',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                        onTap: (){
                          Navigator.pushNamed(
                              context,
                              LovyfoodDetail.routeName
                          );
                        },
                      ),
                      Spacer(),
                      Icon(Icons.location_on,color: primaryColor,size: 20),
                      SizedBox(width: 40),
                      Icon(Icons.favorite_border,color: primaryColor,size: 21,),
                      SizedBox(width: 20),
                    ],
                  ),
                  SizedBox(height: 28),
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
                  SizedBox(height: 28),
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
                ],
              ),
            ),
          );
  }
}
