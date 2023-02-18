import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/OrderPagedetail.dart';
import 'package:flutter_3/thirdline/deliverypage.dart';

import '../common/constants.dart';
import '../second_line/orderPage.dart';
import '../starting/Topsearchcustom.dart';
import 'nextorderdetail.dart';

class DeletePage extends StatelessWidget {
  const DeletePage({Key? key}) : super(key: key);

  static const String routeName ='deletePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.7),
        appBar: AppBar(
          title: const Text('Orders details'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopsearchCustomDelegate(),
              SizedBox(height: 22),
              const Menufororder(
                  index: 0,
                  name: 'Original Salad',
                  subtitle: 'Lovy Food',
                  profile: 'assets/images/Rectangle3.png',
                  price: 10
              ),
              SizedBox(height: 10),
              const Menufororder(
                index: 1,
                name: 'Fresh Salad',
                subtitle: 'Recto Food',
                profile: 'assets/images/Rectangle2.png',
                price: 10,
              ),
              SizedBox(height: 10),
              const Menufororder(
                index: 2,
                name: 'Greeny Salad',
                subtitle: 'Cloudy Food',
                profile: 'assets/images/Rectangle4.png',
                price: 12,
              ),
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.only(left: 19,right: 19,top: 10),
                height: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Icon(
                            Icons.delete_outline,
                            color: primaryColor,
                            size: 28,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                        Text(
                          'Are you sure you want to delete this menu ?',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: (){
                              Navigator.pushNamed(
                                  context,
                                  OrderDetailnext.routeName
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              side: BorderSide(color: primaryColor),

                            ),
                            child: Center(
                              child: Text(
                                '  Cancel  ',
                                style: Theme.of(context).textTheme.headline6!.copyWith(
                                  color: primaryColor,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.pushNamed(
                                  context,
                                 OrdersDetailPage.routeName,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                            ),
                            child: Center(
                              child: Text(
                                'Yes, delete',
                                style: Theme.of(context).textTheme.headline6!.copyWith(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
class Menufororder extends StatelessWidget {
  const Menufororder({
    Key? key,
    required this.index,
    required this.name,
    required this.subtitle,
    required this.profile,
    required this.price,
  }) : super(key: key);

  final int index;
  final String name;
  final String subtitle;
  final String profile;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Container(
            height: 65,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    profile,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        subtitle,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '\$${price.toString()}',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: primaryColor,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '- ',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 22,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '1',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 0,right: 14),
                      child: Container(
                          height: 21,
                          width: 21,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          )
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
