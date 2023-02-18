import 'package:flutter/material.dart';
import 'package:flutter_3/views/locationPage.dart';

import '../common/constants.dart';

class Upload_picPagenext extends StatelessWidget {
  const Upload_picPagenext({Key? key}) : super(key: key);

  static const String routeName ='/upload';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Upload your photo',
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
          SizedBox(height: 35),
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/person.jpg'),
                    radius: 100,
                  ),
                ],
              ),
              Positioned(
                bottom: 3,
                right: 84,
                  child: Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.edit,color: Colors.white,),
                  )
              ),
            ],
          ),
          Spacer(),
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
                  LocationPage.routeName,
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
