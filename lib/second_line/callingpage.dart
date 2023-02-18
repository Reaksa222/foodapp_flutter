import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/endcallPage.dart';

import '../common/constants.dart';
import 'endcallPage.dart';

class CallingPage extends StatelessWidget {
  const CallingPage({Key? key}) : super(key: key);
  static const String routeName = 'callingpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 80,
              backgroundColor: primaryColor,
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/images/person.jpg'),
              ),
            ),
          ),
          SizedBox(height: 8),
          Column(
            children: [
              Text(
                'Monyneath Sindy',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15),
              Text(
                ' 01:30 mins',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 150),
          buildbuttoncallncancel(context),
        ],
      ),
    );
  }
  Row buildbuttoncallncancel(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(
              Icons.cancel,
              color: primaryColor,
              size: 42,
            ),
          ),
          onTap: (){
            Navigator.pushNamed(
                context,
                CallednedPage.routeName
            );
          },
        ),
        SizedBox(width: 35),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.3),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Icon(
            Icons.volume_up,
            color: Colors.green,
            size: 32,
          ),
        )
      ],
    );
  }
}
