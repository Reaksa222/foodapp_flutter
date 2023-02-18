import 'package:flutter/material.dart';
import 'package:flutter_3/thirdline/deletePage.dart';
import 'package:flutter_3/thirdline/deliverypage.dart';

import '../common/constants.dart';
import '../starting/Topsearchcustom.dart';

class OrderDetailnext extends StatelessWidget {
  const OrderDetailnext({Key? key}) : super(key: key);

  static const String routeName ='/nextOrderPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Orders details'),
        ),
        body: Column(
          children: [
            TopsearchCustomDelegate(),
            SizedBox(height: 14),
            const Menufororder(
                index: 0,
                name: 'Original Salad',
                subtitle: 'Lovy Food',
                profile: 'assets/images/Rectangle3.png',
                price: 10
            ),
            const Menufornextorder(
              index: 1,
              name: 'Fresh Salad',
              subtitle: 'Recto Food',
              profile: 'assets/images/Rectangle2.png',
              price: 10,
            ),
            const Menufororder(
              index: 2,
              name: 'Greeny Salad',
              subtitle: 'Cloudy Food',
              profile: 'assets/images/Rectangle4.png',
              price: 12,
            ),
            SizedBox(height: 12),
            buildPaddingInvoice(context)
          ],
        )
    );
  }
  Padding buildPaddingInvoice(BuildContext context) {
    return Padding(
            padding: EdgeInsets.only(left: 14,right: 14,top: 8),
            child: Container(
              padding: EdgeInsets.only(left: 19,right: 19,top: 10),
              height: 200,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Row(
                    children: const[
                      Text(
                        'Subtotal',
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        '\$32',style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: const[
                      Text(
                        'Delivery charge',
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        '\$5',style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children:const [
                      Text(
                        'Discount',
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        '\$10',style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 1,
                    width: 400,
                    color: Colors.white,
                  ),
                  SizedBox(height: 8),
                  Row(
                    children:const [
                      Text(
                        'Total',
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        '\$27',style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 15,top: 18),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(
                            context,
                            DeliveryPage.routeName
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white
                      ),
                      child: Center(
                        child: Text(
                          'Place my order',
                          style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: primaryColor,
                            fontSize: 18,
                          ),
                        ),
                      ),

                    ),
                  )
                ],
              ),
            ),
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
                    ),
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

class Menufornextorder extends StatelessWidget {
  const Menufornextorder({
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
                    ),
                    SizedBox(width: 12),
                    Padding(
                      padding: const EdgeInsets.only(top: 0,right: 14),
                      child: InkWell(
                        child: Container(
                            height: 21,
                            width: 19,
                            decoration: BoxDecoration(
                              color: primaryColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.delete_outline,
                                color: primaryColor,
                                size: 15,
                              ),
                            )
                        ),
                        onTap: (){
                          Navigator.pushNamed(
                              context,
                              DeletePage.routeName
                          );
                        },
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