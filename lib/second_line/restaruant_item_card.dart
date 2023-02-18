import 'package:flutter/material.dart';

import '../common/constants.dart';

class Restaruant_item extends StatelessWidget {
  Restaruant_item({
    Key? key,
    required this.index,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.margin,
  }) : super(key: key);

  final int index;
  final String title;
  final String subtitle;
  final String image;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3),
          )
        ]
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            child: Image.asset(image),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
               fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
class Restaurant_item_menu extends StatelessWidget {
  const Restaurant_item_menu({
    required this.index,
    required this.title,
    required this.subtitle,
    required this.imagepath,
    required this.price,
    required this.margin,

    Key? key}) : super(key: key);

  final int index;
  final String title;
  final String subtitle;
  final String imagepath;
  final int price;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 130,
          width: 350,
          margin: margin,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                )
              ]
          ),
          alignment: Alignment.center,
          child: ListTile(
            leading: Image.asset(
              imagepath,
              scale: 2,
               fit: BoxFit.cover,
             ),
              title: Text(
                 title,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                   fontSize: 16,
                   color: Colors.black,
                ),
              ),
              subtitle: Text(
                subtitle,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: 14,
                  color: Colors.grey,
                 fontWeight: FontWeight.w400,
               ),
            ),
              trailing: Text(
                '\$${price.toString()}',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              )
          ),
        ),
      ],
    );
  }
}

class RestaurantMenunoprice extends StatelessWidget {
  const RestaurantMenunoprice({

    required this.index,
    required this.title,
    required this.subtitle,
    required this.imagepath,
    required this.margin,

    Key? key}) : super(key: key);

  final int index;
  final String title;
  final String subtitle;
  final String imagepath;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 120,
          width: 250,
          margin: margin,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                )
              ]
          ),
          alignment: Alignment.center,
          child: ListTile(
              leading: Image.asset(
                imagepath,
                scale: 2,
                fit: BoxFit.cover,
              ),
              title: Text(
                title,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                subtitle,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
          ),
        ),
      ],
    );
  }
}


