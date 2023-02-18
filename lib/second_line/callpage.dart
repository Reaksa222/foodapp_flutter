import 'package:flutter/material.dart';

import '../common/constants.dart';
import 'callingpage.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  static const String routeName ='callpage';

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
                'Ringing...',
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
                Navigator.pop(context);
              },
            ),
            SizedBox(width: 35),
            InkWell(
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(
                  Icons.call,
                  color: Colors.green,
                  size: 32,
                ),
              ),
              onTap: (){
                Navigator.pushNamed(
                    context,
                    CallingPage.routeName
                );
              },
            )
          ],
        );
  }
}
