import 'package:flutter/material.dart';
import 'package:flutter_3/views/setlocationPage.dart';

import '../common/constants.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  static const String routeName = '/location';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'set your Location',
          style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Theme.of(context).secondaryHeaderColor
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'This data will be displayed in your account profile for\nsecurity',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Theme.of(context).secondaryHeaderColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 35,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: 30),
              Text(
                'Set Location',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 14,right: 14,top: 8),
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: primaryColor.withOpacity(0.6),
              ),
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  SetLocationPage.routeName,
                );
              },
              child: Text(
                'Next',
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
