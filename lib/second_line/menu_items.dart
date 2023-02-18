import 'package:flutter/material.dart';

import '../common/constants.dart';

class MenuPage extends StatelessWidget {
  MenuPage({
    Key? key,

    required this.index,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.price,
    required this.margin,
  }) : super(key: key);

  final int index;
  final String title;
  final String subtitle;
  final String image;
  final int price;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
          leading: Image.asset(
            image,
            scale: 2,
            fit: BoxFit.cover,
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 16,
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
    );
  }
}