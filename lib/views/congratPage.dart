import 'package:flutter/material.dart';
import 'package:flutter_3/common/home_page.dart';
import 'package:flutter_3/views/homescreen.dart';
import 'package:flutter_3/views/sign_inScreen.dart';

import '../common/constants.dart';

class congrarPage extends StatelessWidget {
  const congrarPage({Key? key}) : super(key: key);

  static const String routeName = '/congrat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      Icon(
                          Icons.check_circle,
                          color: Theme.of(context).primaryColor,
                        size:150,
                      ),
                    Positioned(
                      right: 20,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 150,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                child: Container(
                  height: 17,
                  width: 17,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                left: 140,
                child: Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
               right: 140,
                child: Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Positioned(
                bottom: 68,
               left: 120,
                child: Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'Congrats!',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor,
                   // fontSize: 25
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  'Your profile is ready to use',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).secondaryHeaderColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            margin: EdgeInsets.only(left: 14,right: 14,top: 8),
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: primaryColor,
              ),
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  homeScreen.routeName,
                );
              },
              child: Text(
                'Go HomePage',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
